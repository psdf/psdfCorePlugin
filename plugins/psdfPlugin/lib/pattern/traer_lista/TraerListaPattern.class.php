<?php

class TraerListaPattern extends BasePattern
{
    protected
            $in_clase,      // Clase
            $in_filtro,     // Filtrado de objetos
            $out_lista,     // Lista xml retornada
            $out_cantidad;  // Cantidad de objetos retornados

    public function execute() {

        if( !$this->getParameter('in_filtro') ) {
            $q = Doctrine_Query::create()
                    ->from( $this->getParameter('in_clase') );
        }
        else {
            $q = Doctrine_Query::create()
                    ->from( $this->getParameter('in_clase') )
                    ->where( $this->getParameter('in_filtro') );
        }

        $objs = $q->execute();

        $xml = '<list>';
        foreach( $objs as $obj )
            $xml.= UtilPsdf::objInstanceToXml( $obj );
        $xml.= '</list>';

        $this->setParameter('out_lista', $xml);
        $this->setParameter('out_cantidad', count($objs) );
    }
}