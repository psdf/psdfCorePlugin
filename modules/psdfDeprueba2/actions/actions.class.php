<?php

/**
 * deprueba2 actions.
 *
 * @package    psdf
 * @subpackage deprueba2
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class psdfDeprueba2Actions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->procesos = Doctrine::getTable('Proceso')
      ->createQuery('a')
      ->execute();
  }

  public function executeShow(sfWebRequest $request)
  {
    $this->proceso = Doctrine::getTable('Proceso')->find(array($request->getParameter('id')));
    $this->forward404Unless($this->proceso);
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new ProcesoForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new ProcesoForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($proceso = Doctrine::getTable('Proceso')->find(array($request->getParameter('id'))), sprintf('Object proceso does not exist (%s).', $request->getParameter('id')));
    $this->form = new ProcesoForm($proceso);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
    $this->forward404Unless($proceso = Doctrine::getTable('Proceso')->find(array($request->getParameter('id'))), sprintf('Object proceso does not exist (%s).', $request->getParameter('id')));
    $this->form = new ProcesoForm($proceso);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($proceso = Doctrine::getTable('Proceso')->find(array($request->getParameter('id'))), sprintf('Object proceso does not exist (%s).', $request->getParameter('id')));
    $proceso->delete();

    $this->redirect('deprueba2/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $proceso = $form->save();

      $this->redirect('deprueba2/edit?id='.$proceso->getId());
    }
  }
}
