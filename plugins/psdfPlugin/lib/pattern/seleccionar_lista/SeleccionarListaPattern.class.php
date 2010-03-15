<?php

class SeleccionarListaPattern extends BasePattern
{
    protected
        $in_lista,        // Lista de objetos
        $in_atributos,    // Atributos a visualizar
        $in_etiquetas,    // Etiquetas para los atributos
        $in_multiselect,  // Multiseleccion
        $in_obligatorio,  // Obligatorio al menos una seleccion
        $out_lista,       // Lista xml retornada seleccionada
        $out_cantidad;    // Cantidad de objetos retornados seleccionados
        
        public function execute() {
            $xml = $this->getParameter('in_lista');
            $atts = sfYaml::load($this->getParameter('in_atributos'));
            $lbls = sfYaml::load($this->getParameter('in_etiquetas'));

            if(!isset($atts)) $atts = array();
            if(!isset($lbls)) $lbls = array();
            $objetos = array();

            // Cargo arbol con la lista xml

            $dom = new DOMDocument('1.0', 'ISO-8859-1');
            $dom->loadXml( $xml );

            // Recupero nodos objetos y cantidad

            $nodes = $dom->getElementsByTagName("obj");
            $size = $nodes->length;

            // Si no se especifico atributos en particular, cargo todos
            // (tomo el primer objeto como referencia)

            if( $size>0 and count($atts)==0 ) {
                if ($nodes->item(0)->hasChildNodes()) {
                    $children = $nodes->item(0)->childNodes;
                    foreach($children as $node) {
                        if ($node->nodeType == XML_ELEMENT_NODE) {
                            $atts[] = $node->nodeName;
                        }
                    }
                }
            }

            // Recorro nodos generando array con atributos a visualizar

            for( $i=0; $i<$size; $i++ ) {
                foreach($atts as $att) {
                    $nds = $nodes->item($i)->getElementsByTagName($att);
                    $objetos[$i][$att] = $nds->item(0)->nodeValue;
                }
            }

            // Paso informacion a la interfaz

            $this->setTplParameter('attribs', $atts);
            $this->setTplParameter('objetos', $objetos);
        }
	
        public function resume($request) {
            // Cargo arbol con la lista xml
            $dom = new DOMDocument('1.0', 'ISO-8859-1');
            $dom->loadXml( $this->getParameter('in_lista') );

            // xpath para busqueda en lista inicial
            $xp = new domxpath( $dom );

            // Creo nuevo string xml donde ir cargando los objetos seleccionados
            $xml = "<list>";
            foreach($request->getParameter('ids') as $id) {
                // Obtengo objeto de la lista inicial a partir de su id
                $find = $xp->query( "/list/obj[id='".$id."']" );
                if( $find->length == 1 ) {
                    $xml.= $dom->saveXML($find->item(0));
                }
            }
            $xml.= "</list>";
            
            $this->setParameter('out_lista', $xml);
            $this->setParameter('out_cantidad', count($request->getParameter('ids')));
        }
    }