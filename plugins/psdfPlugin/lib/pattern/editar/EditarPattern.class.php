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
        $in_clase,      // Nombre de la clase (opcional, para cuando se quiera 
                        // editar un objeto nuevo
        $in_lista,      // Lista XML de objetos
        $in_config,     // Configuración Yml Symfony de la edición
        $out_lista;     // Lista XML editada

    public function execute()
    {
        // Cargo parametros (fields y display van a la interfaz)

        $xml = $this->getParameter('in_lista');
        $clase = $this->getParameter('in_clase'); // Opcional

        $obj = UtilPsdf::objXmlToInstance($xml);

        if( $obj ) {
            // Edicion! Instancio la clase form con el objeto
            $formClassName = get_class($obj).'Form';
            $form = new $formClassName($obj);
        }
        else {
            // Nuevo! Instancio la clase vacía, pero 1ro me valgo del parametro clase si lo tuviera
            if( !$clase ) {
                $this->setError('No se pudo determinar la clase a utilizar en el patron');
                return false;
            }
            $formClassName = $clase.'Form';
            $form = new $formClassName();
        }

        $this->setTplParameter( 'form', $form );
    }

    public function resume($request)
    {
        // Vuelvo a instanciar lista del parametro
        $xml = $this->getParameter('in_lista');
        $clase = $this->getParameter('in_clase'); // Opcional

        $obj = UtilPsdf::objXmlToInstance($xml);

        if( $obj ) {
            // Edicion! Instancio la clase form con el objeto
            $formClassName = get_class($obj).'Form';
            $form = new $formClassName($obj);
        }
        else {
            // Nuevo! Instancio la clase vacía, pero 1ro me valgo del parametro clase si lo tuviera
            if( !$clase ) {
                $this->setError('No se pudo determinar la clase a utilizar en el patron');
                return false;
            }
            $formClassName = $clase.'Form';
            $form = new $formClassName();
            $obj = $form->getObject();
        }

        $fields = $request->getParameter($form->getName());
        // remove CSRF token
        //unset($fields[$form->getCSRFFieldName]);

        foreach( $fields as $key => $value ) {
            if( isset($obj->$key) ) {
                if( $obj->$key != $value ) {
                    $obj->$key = $value;
                }
            }
        }
        
        /* La forma en que trata symfony la grabacion desde el formulario:
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $obj = $form->save();
        } */

        // Vuelvo a convertir a xml
        $xml = '<list>';
        $xml.= UtilPsdf::objInstanceToXml( $obj );
        $xml.= '</list>';

        // Seteo parametro de retorno
        $this->setParameter('out_lista', $xml);
    }

}
?>
