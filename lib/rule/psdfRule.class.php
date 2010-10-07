<?php

/*
 * This file is part of the psdfCore package.
 * (c) 2009-2010 Soltic S.R.L. <contacto@proyecto-psdf.com.ar>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

/**
 * psdfRule es un motor de definicion y ejecucion de reglas
 *
 * @package    psdfCore
 * @subpackage rule
 * @author     Gustavo Earnshaw <gustavoear@gmail.com>
 */
class psdfRule {

    private $expAlgebraica;     // Expresion algebraica de la regla (ej. 'cant>0 and estado=1')
    private $expPolaca;         // Expresion polaca de la regla (ej. )
    private $operando;          // Operandos utilizados en la expresion polaca
    private $relationalOperator; // Operadores relacionales utilizados en la expresion polaca
    private $aritmeticOperator; // Operadores aritmeticos utilizados en la expresion polaca
    private $logicalOperator;   // Operadores logicos utilizados en la expresion polaca
    private $variable;
    private $stack;

    const TYPE_STRING = 'string';
    const TYPE_NUMERIC = 'numeric';
    const TYPE_PARAMETER= 'param';

    /**
     * Constructor.
     * Inicializa arrays de elementos utilizados para la regla
     */
    function __construct() {
        $this->aritmeticOperator = '+-*/^';
        $this->operando = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ_1234567890\'"abcdefghijklmnopqrstuvwxyz';
        $this->logicalOperator = '&|';
        $this->relationalOperator = '<>=@#\\';
        $this->variable = array();
        $this->stack = array();
        $this->expAlgebraica = '';
        $this->expPolaca = '';
    }

    /**
     * setCondition.
     * Setea regla (expresion Algebraica).
     * Ademas, convierte a polaca dicha expresion
     *
     * @param unknown_type $pExpresion
     */
    function setCondition($pCondition) {
        $this->expAlgebraica = $pCondition;
        // Convierto a polaca
        $this->expPolaca = $this->convert($this->expAlgebraica);
    }

    /**
     * Agrega el valor de una variable que compone la regla
     * Ej. Para la regla cant>0 debe especificarse el valor de cant
     * Si la variable ya existiese se pisa su valor
     *
     * @param string $pName Nombre de la variable
     * @param string $pType Tipo de variable (int, char, etc.) HOY TODAVIA NO TIENE USO
     * @param string $pValue Valor de la variable
     */
    private function addVariable($pName, $pType, $pValue) {
        // Elimino comillas si es un string
        $pName = $this->parseMarks($pName);
        $pValue = $this->parseMarks($pValue);

        if (!array_key_exists($pName, $this->variable)) {
            // Obtengo letra a representar a la variable (hago coincidir con la posicion del array)
            $id = substr($this->operando, count($this->variable), 1);
        } else {
            // Obtengo la letra ya asignada
            $id = $this->variable[$pName]['id'];
        }

        $this->variable[$pName] = array('name' => $pName,
                                        'type' => $pType,
                                        'value' => $pValue,
                                        'id' => $id);
    }

    /**
     * Convierte la regla (expresion algebraica) a expresion polaca.
     * Retorna la expresion convertida a polaca.
     *
     * @param string $pExpr Expresion algebraica
     * @return string Expresion polaca
     */
    function convert($pExpr) {
        $pila = array();

        $expr = $this->prepare($pExpr);

        $i = 0;
        $sym = substr($expr, $i, 1);
        $len = strlen($expr);
        $polaca = "";
        while ($i < $len) {
            if ($this->isOperando($sym)) {
                $polaca .= $sym;
            } else {
                $topSym = array_pop($pila);
                $ret = $this->procedencia($topSym, $sym);
                while (isset($topSym) && $ret) {
                    $polaca .= $topSym;
                    $topSym = array_pop($pila);
                    $ret = $this->procedencia($topSym, $sym);
                }
                if (isset($topSym))
                    array_push($pila, $topSym);
                if (!isset($topSym) || $sym != ')')
                    array_push($pila, $sym);
                else
                    $topSym = array_pop($pila);
            }
            $i++;
            $sym = substr($expr, $i, 1);
        }

        $topSym = array_pop($pila);
        while (isset($topSym)) {
            $polaca .= $topSym;
            $topSym = array_pop($pila);
        }

        return $polaca;
    }

    /**
     * Prepara la expresion algebraica:
     *  - Limpiando caracteres blancos e intercambiando caracteres (Ej. AND por &, etc...)
     *  - Detectando variables y registrandolas
     *  - Reemplazando en la expresion variables por su ID (el id es una letra mayusc.)
     * Ejemplo: CANT>0 AND EXIST=1 ==> A>0&B=1
     * @param $pExpr expresion
     * @return string Nueva expresion
     */
    function prepare($pExpr) {
        //echo "prepare() Expr: " . $pExpr . "<br>";
        $newExpr = "";

        // Limpio y reemplazo caracteres invalidos

        $expr = $pExpr;
        // and y or por & y |
        $expr = str_replace(' AND ', '&', $expr);
        $expr = str_replace(' and ', '&', $expr);
        $expr = str_replace(' OR ', '|', $expr);
        $expr = str_replace(' or ', '|', $expr);
        // >=, <= y <> por @, # y \
        $expr = str_replace('>=', '@', $expr);
        $expr = str_replace('=<', '#', $expr);
        $expr = str_replace('<>', '\\', $expr);
        // se quitan los caracteres en blanco
        $expr = str_replace(' ', '', $expr);

        //echo "prepare() Expr: " . $expr . "<br>";
        // Recorro la expresion para ir detectando las variables

        $i = 0;
        while ($i < strlen($expr)) {
            $char = substr($expr, $i, 1);
            if ($this->isOperando($char)) {
                // Comienzo de la variable, busco el final.
                $j = $i + 1;
                $char2 = substr($expr, $j, 1);
                while ($j < strlen($expr) && $this->isOperando($char2)) {
                    $j++;
                    $char2 = substr($expr, $j, 1);
                }

                // Extraigo variable
                $varName = substr($expr, $i, $j - $i);
                
                // La registro (por defecto el valor es el mismo nombre)
                if( $this->hasMarks($varName)) {
                    $varName = $this->parseMarks($varName);
                    $this->addVariable($varName, self::TYPE_STRING, $varName);
                }
                elseif(is_numeric($varName)) {
                    $this->addVariable($varName, self::TYPE_NUMERIC, $varName);
                }
                else {
                    $this->addVariable($varName, self::TYPE_PARAMETER, $varName);
                }

                // Concateno nueva expresion usando ya el Id generado (A, B, etc...)
                $newExpr .= $this->getVarID($varName);

                $i = $j;
            } else {
                // Concateno nueva expresion como está
                $newExpr .= $char;
                $i++;
            }
        }
        return $newExpr;
    }

    /**
     * Obtiene el id de una variable a partir de su nombre.
     * (El id es la letra que identifica a la variable)
     * @param $pVarName
     * @return unknown_type
     */
    function getVarID($pVarName) {
        foreach ($this->variable as $var) {
            if ($var['name'] == $pVarName) {
                return $var['id'];
            }
        }
        return '';
    }

    /**
     * Obtiene el valor de una variable a partir de su id.
     * (El id es la letra que identifica a la variable)
     * @param $pVarId
     * @return unknown_type
     */
    function getVarValue($pVarId) {
        foreach ($this->variable as $var) {
            if ($var['id'] == $pVarId) {
                return $var['value'];
            }
        }
        return '';
    }

    function isOperando($pChar) {
        $pos = strpos($this->operando, $pChar);
        if ($pos === false)
            return false;
        else
            return true;
    }

    function isOperatorLogical($pChar) {
        $pos = strpos($this->logicalOperator, $pChar);
        if ($pos === false)
            return false;
        else
            return true;
    }

    function isOperatorRelational($pChar) {
        $pos = strpos($this->relationalOperator, $pChar);
        if ($pos === false)
            return false;
        else
            return true;
    }

    function procedencia($pPrimero, $pSegundo) {

        if ($pPrimero == '-' && $pSegundo == '+')
            return true;

        if ($pPrimero == '*' && $pSegundo == '/')
            return true;

        if ($pPrimero == '(')
            return false;

        if ($pPrimero != ')' && $pSegundo == '(')
            return false;

        if ($pPrimero != '(' && $pSegundo == ')')
            return true;

        if ($pSegundo == '&' || $pSegundo == '|')
            return true;

        if ($pPrimero == '&' || $pPrimero == '|')
            return false;

        if ($pPrimero == ')' && $pSegundo == '(') {
            //echo 'Conversi�n a Notaci�n polaca inversa - Atenci�n! Mal ingresados los parentesis';
            return false;
        }

        for ($i = 0; $i < 5; $i++) {
            if ($pPrimero == substr($this->aritmeticOperator, $i, 1))
                return TRUE;
            if ($pSegundo == substr($this->aritmeticOperator, $i, 1))
                return FALSE;
        }

        return false;
    }

    /**
     * Valida la expresion Polaca
     *
     * @return number 1-True 2-False
     */
    function validate() {
        $premisas = array();
        $valores = array();
        $pop = 0;
        $push = 0;
        $len = strlen($this->expPolaca);

        //echo "validate() " . $this->expPolaca . '<br/>';

        $i = 0;
        while ($i < $len) {
            $sym = substr($this->expPolaca, $i, 1);

            //echo 'validate() char: '.$sym.'<br/>';

            if ($this->isOperando($sym)) {
                // Es un operando, tomo su valor y lo pongo en la pila
                //echo $sym.': '.$this->getVarValue( $sym ).'<br/>';
                array_push($valores, $this->getVarValue($sym));
            } elseif ($this->isOperatorRelational($sym)) {
                // Es un operador relacional, extraigo los dos ultimos operadores
                $aux1 = array_pop($valores);
                $aux2 = array_pop($valores);
                switch ($sym) {
                    case ">":
                        if ($aux2 > $aux1)
                            $resuoper = "1"; else
                            $resuoper="0";
                        break;
                    case "<":
                        if ($aux2 < $aux1)
                            $resuoper = "1"; else
                            $resuoper="0";
                        break;
                    case "=":
                        if ($aux2 == $aux1)
                            $resuoper = "1"; else
                            $resuoper="0";
                        break;
                    case "\\":
                        if ($aux2 != $aux1)
                            $resuoper = "1"; else
                            $resuoper="0";
                        break;
                }
                //echo $aux2.$sym.$aux1.': '.$resuoper.'<br/>';

                if (!isset($aux1) || !isset($aux2))
                    $resuoper = "0";

                // Guardo el resultado
                array_push($premisas, $resuoper);
                $push++;
            }
            elseif ($this->isOperatorLogical($sym)) {
                // Es un operador logico, extraigo los dos ultimos operadores
                $aux1 = array_pop($premisas);
                $pop++;
                $aux2 = array_pop($premisas);
                $pop++;
                switch ($sym) {
                    case "&":
                        if ($aux1 == "1" && $aux2 == "1")
                            $resuoper = "1";
                        else
                            $resuoper = "0";
                        break;
                    case "|":
                        if ($aux1 == "0" || $aux2 == "0")
                            $resuoper = "1";
                        else
                            $resuoper = "0";
                        break;
                }

                //echo $aux2.$sym.$aux1.': '.$resuoper.'<br/>';

                if (!isset($aux1) || !isset($aux2))
                    $resuoper = "0";
                // Guardo el resultado
                array_push($premisas, $resuoper);
                $push++;
            }
            $i++;
        }
        $aux1 = array_pop($premisas);
        $pop++;

        //echo "Validando: " . $this->expPolaca . ". Resultado: " . $aux1 . '<br/>';

        if ($aux1 == "1")
            return true;
        else
            return false;
    }

    function getVariables() {
        return $this->variable;
    }

    function getExpAlgebraica() {
        return $this->expAlgebraica;
    }

    function getExpPolaca() {
        return $this->expPolaca;
    }


    /**
     * Retorna verdadero si la expresion contiene comillas al inicio y final
     * Ej. "algo" ==> true
     * @param $expr
     * @return boolean True si contiene comillas.
     */
    function hasMarks($expr) {
        if (substr($expr, 0, 1) == '"' || substr($expr, 0, 1) == "'")
            return true;
        else
            return false;
    }

    /**
     * Quita de una expresion las comillas simples o dobles al inicio y final
     * Ej. "algo" ==> algo
     * @param string $expr Expresion
     * @return string Expresion sin las comillas
     */
    function parseMarks($expr) {
        if (substr($expr, 0, 1) == '"')
            $expr = substr($expr, 1, strlen($expr) - 2);
        else if (substr($expr, 0, 1) == "'")
            $expr = substr($expr, 1, strlen($expr) - 2);
        return $expr;
    }

    /**
     * Setea un valor a un parametero de la condicion
     * (solo aplicado a variables del tipo TYPE_PARAMETER
     * @param string $param Nombre del parametro
     * @param string $value Valor a aplicar al parametro
     * @return boolean True si pudo aplicarse el valor
     */
    function setParameter($param, $value) {
        if (array_key_exists($param, $this->variable)) {
            if( $this->variable[$param]['type']==self::TYPE_PARAMETER ) {
                $this->variable[$param]['value'] = $value;
                return true;
            }
        }
        return false;
    }

    /**
     * Recupera las variables de tipo parametro con sus valores actuales
     *
     * @return array Lista de variables del tipo parametro (TYPE_PARAMETER) con sus valores
     */
    function getParameters() {
        $ret = array();
        foreach( $this->variable as $varname=>$vardef ) {
            if( $vardef['type']==self::TYPE_PARAMETER ) {
                $ret[$varname]=$vardef['value'];
            }
        }
        return $ret;
    }
}

?>