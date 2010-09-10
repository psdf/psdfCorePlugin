<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class PluginFlow extends BaseFlow
{
	private $xml;
	private $xmlIsLoaded;
		
  public function getDataField($pDataFieldName)
  {
    if( !$this->xmlIsLoaded ) $this->loadDataFields();  	
    
    $xp = new domxpath( $this->xml );
    $nodeList = $xp->query( "/DataFields/DataField[ @Name = \"" . $pDataFieldName . "\"]" );
    
    if( $nodeList->item(0) )
    {
    	return $nodeList->item(0)->textContent;
    }
    return false;
  }
  
  public function setDataField($pDataFieldName, $pValue)
  {    
  	if( !$this->xmlIsLoaded )	$this->loadDataFields();
    
    $xp = new domxpath( $this->xml );
  	$nodeList = $xp->query( "/DataFields/DataField[ @Name = \"" . $pDataFieldName . "\"]" );
    
    if( !$nodeList->item(0) )
    {
    	$df = $this->xml->createElement('DataField');
    	$df->setAttribute('Name', $pDataFieldName);
    	$this->xml->getElementsByTagName('DataFields')->item(0)->appendChild($df);
      $df->appendChild($this->xml->createCDATASection($pValue));
    }
    else
    {
      $nodeList->item(0)->replaceChild(
                      $this->xml->createCDATASection($pValue), 
                      $nodeList->item(0)->childNodes->item(0));
    }
        
    $this->setDataFields( $this->xml->saveXML() );    
  }
  
  public function loadDataFields()
  {
  	$this->xml = new DOMDocument("1.0");
  	$stringXml = $this->getDatafields();
  	
  	if( !$stringXml )
  	{
  		// Creo el nodo raiz
  		$root = $this->xml->createElement("DataFields");
  		$this->xml->appendChild($root);
  		  		
  		$stringXml = $this->xml->saveXML();
  		$this->setDatafields($stringXml);
  	}
  	
  	if( !$this->xmlIsLoaded )
  	{
	  	$ret = $this->xml->loadXML($stringXml);   
      if( $ret )
      {
        $this->xmlIsLoaded = true;              	
      }
  	}
  	return $this->xmlIsLoaded;
  }
}