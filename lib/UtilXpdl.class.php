<?php

class UtilXpdl {
    static public function genRandId() {
        $length = 22;
        $possible = '0123456789' .
                'abcdefghjiklmnopqrstuvwxyz' .
                'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $str = "";
        while (strlen($str) < $length) {
            $str .= substr($possible, (rand() % strlen($possible)), 1);
        }

        return "_".$str;
    }

    /**
     * Recupera el Id del paquete Xpdl parametrizado.
     * El paquete puede ser una url de un archivo o un contenido xml.
     * @param string $pFileXpdl Url del archivo o contenido
     * @return string Id xpdl o false si no lo tiene. 
     */
    static public function getFileXpdlId( $pFileXpdl )
    {
        $xml = new DOMDocument();

        if( file_exists($pFileXpdl) ){
            $ret = $xml->load($pFileXpdl);
        }else{
            $ret = $xml->loadXML($pFileXpdl);
        }

        if( !$ret )
            return false;

        $xp = new domxpath( $xml );
        $nodeList = $xp->query( "/xpdl2:Package" );
	$node = $nodeList->item(0);
        
	return $node->getAttribute('Id');
    }

    /**
     * Recupera el Id del paquete Xpdl parametrizado.
     * El paquete puede ser una url de un archivo o un contenido xml.
     * @param string $pFileXpdl Url del archivo o contenido
     * @return string Id xpdl o false si no lo tiene.
     */
    static public function getFileXpdlName( $pFileXpdl )
    {
        $xml = new DOMDocument();

        if( file_exists($pFileXpdl) ){
            $ret = $xml->load($pFileXpdl);
        }else{
            $ret = $xml->loadXML($pFileXpdl);
        }

        if( !$ret )
            return false;

        $xp = new domxpath( $xml );
        $nodeList = $xp->query( "/xpdl2:Package" );
	$node = $nodeList->item(0);

	return $node->getAttribute('Name');
    }

    /**
     * Recupera el Macro Id del paquete Xpdl parametrizado.
     * El paquete puede ser una url de un archivo o un contenido xml.
     * @param string $pFileXpdl Url del archivo o contenido
     * @return string Id xpdl o false si no lo tiene.
     */
    static public function getFileXpdlMacroId( $pFileXpdl )
    {
        $xml = new DOMDocument();

        if( file_exists($pFileXpdl) ){
            $ret = $xml->load($pFileXpdl);
        }else{
            $ret = $xml->loadXML($pFileXpdl);
        }

        if( !$ret )
            return false;

        $xml = new DOMDocument();
        $ret = $xml->load($pFileXpdl);

        $xp = new domxpath( $xml );
        $nodeList = $xp->query( "/xpdl2:Package/ExtendedAttributes/ExtendedAttribute[@Name=\"PSDFMacro\"]" );	
        if( $nodeList->length > 0 )
        {
            $node = $nodeList->item(0);
            return $node->getAttribute('Value');
        }
        return false;
    }

    /**
     * Recupera el Nombre del paquete Xpdl archivo parametrizado.
     * El nombre responde a como fue nombrado el archivo Xpdl, deberia ser
     * ruta/al/workspace/proyecto/macro/paquete.xpdl
     * Si no respeta dicho formato retorna una cadena vacia
     * @param string $pFileXpdl Nombre del archivo
     * @return string Nombre del Macro o false si no lo tiene.
     */
    static public function getFileXpdlMacroName( $pFileXpdl )
    {
        // Tomo la anteultima parte (count - 2)
        // ej: workspace/proyecto/miMacro/paquete.xpdl
        // count=4 => workspace=0, proyecto=1, miMacro=2, paquete.xpdl=3
        // macroName = count-2 = miMacro

        $partes = explode(DIRECTORY_SEPARATOR, $pFileXpdl);
        return $partes[count($partes)-2];
    }
}

?>