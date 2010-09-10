<?php
/* 
 * Grabar.class.php
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
 * Description of Grabarclass
 *
 * @author Gustavo Earnshaw <gustavoear@gmail.com>
 */
class GrabarPattern extends BasePattern
{
    protected
        $in_lista,      // Lista XML de objetos
        $out_id;        // Retorna el id del objeto grabado

    public function execute()
    {
        $id = 0;

        // Convierto xml a objeto
        $xml = $this->getParameter('in_lista');
        $objnew = UtilPsdf::objXmlToInstance($xml);

        // Recupero estado actual
        $obj = Doctrine::getTable(get_class($objnew))->find($objnew->getId());

        foreach( $obj as $att => $val) {
            if( isset($obj->$att) ) {
                if( strtolower($att)!='id' and $val!=$objnew->$att) {
                    $obj->$set($val);
                }
            }
        }

        if( $obj ) {
            $obj->save();
            $id = $obj->getId();
        }        

        $this->setTplParameter( 'out_id', $id );
    }
}
?>
