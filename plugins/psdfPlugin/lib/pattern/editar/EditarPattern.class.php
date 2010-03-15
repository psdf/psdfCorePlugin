<?php
/* 
 * Editar.class.php
 * 
 * Copyright (c) 2009 Gustavo Earnshaw <gustavoear@gmail.com>. All rights reserved.
 * 
 * This file is part of PSDF Suite.
 * 
 * PSDF Suite is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * PSDF Suite is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with PSDF Suite.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Description of Editarclass
 *
 * @author Gustavo Earnshaw <gustavoear@gmail.com>
 */
class EditarPattern extends BasePattern
{
    protected
        $in_lista,      // Lista XML de objetos
        $in_fields,     // Propiedades de cada campo
        $in_display,    // Campos a visualizar
        $out_lista;     // Lista XML editada

    public function execute()
    {
        // Cargo parametros (fields y display van a la interfaz)

        $xml = $this->getParameter('in_lista');

        if( $this->getParameter('in_fields')!="" ){
            $this->setTplParameter( 'fields', $this->getParameter('in_fields') );
        }else{
            $this->setTplParameter( 'fields', array() );
        }
        if( $this->getParameter('in_display')!="" ){
            $this->setTplParameter( 'display', $this->getParameter('in_display') );
        }else{
            $this->setTplParameter( 'display', array() );
        }

        // Convierto obj xml a instancia PHP (pasandolo a interfaz tambien)

        $obj = UtilPsdf::objXmlToInstance($xml);
        /*
        $obj2 = Doctrine::getTable('Proceso')->find(54);
        echo '<br/>------------<br/>';
        var_dump($obj);
        echo '<br/>------------<br/>';
        var_dump($obj2);
        echo '<br/>------------<br/>';
        die('');
         */
        $classname = get_class($obj);
        $this->setTplParameter( 'obj', $obj );
        $this->setTplParameter( 'classname', $classname );
    }

    public function resume($request)
    {
        // Vuelvo a instanciar lista del parametro
        $xml = $this->getParameter('in_lista');
        $obj = UtilPsdf::objXmlToInstance($xml);
        $classname = get_class($obj);

        // Recorro campos del formulario y actualizo los modificados
        foreach( $request->getParameter(UtilPsdf::fromCamelCase($classname)) as
                    $key=>$value )
        {
            if( $obj->$key != $value )
                $obj->$key = $value;
        }

        // Vuelvo a convertir a xml
        $xml = '<list>';
        $xml.= UtilPsdf::objInstanceToXml( $obj );
        $xml.= '</list>';

        // Seteo parametro de retorno
        $this->setParameter('out_lista', $xml);
    }

}
?>
