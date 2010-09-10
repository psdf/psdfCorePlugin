<?php

class MensajePattern extends BasePattern
{
	protected
    $in_title,    // Titulo de la ventana de mensaje
    $in_msg,      // El mensaje
    $in_buttons,  // YESNO OK YESNOCANCEL 
    $out_button;  // Boton seleccionado
	
  public $algo;
  
	public function execute()
	{	
		$this->setTplParameter('title', $this->getParameter('in_title'));
    $this->setTplParameter('msg', $this->getParameter('in_msg'));
    $this->setTplParameter('buttons', $this->getParameter('in_buttons'));
    $this->setTplParameter('testp', 'testp_testp');
	}
	
	public function resume($request)
	{
		$this->setParameter('out_button', $request->getParameter('button')); 
	}
}