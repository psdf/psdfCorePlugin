<?php

/**
 * psdfManual actions.
 *
 * @package    psdf
 * @subpackage psdfManual
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class psdfManualActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
  	
  }
  
  public function executeShow(sfWebRequest $request)
  {
    
    $file = dirname(__FILE__).'/../../../doc/manual/'.$request->getParameter('chapter').'.txt';
    
    include_once dirname(__FILE__).'/../../../lib/PHP Markdown 1.0.1m/markdown.php';
    
    $texto = file_get_contents($file);
    
    $this->chapter = Markdown($texto);

    return $this->renderText("<html><body>".$this->chapter."</body></html>");
  }
  
}
