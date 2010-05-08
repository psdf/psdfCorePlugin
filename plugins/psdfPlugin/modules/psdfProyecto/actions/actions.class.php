<?php

require_once dirname(__FILE__).'/../lib/psdfProyectoGeneratorConfiguration.class.php';
require_once dirname(__FILE__).'/../lib/psdfProyectoGeneratorHelper.class.php';

/**
 * psdfProyecto actions.
 *
 * @package    psdf
 * @subpackage psdfProyecto
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class psdfProyectoActions extends autoPsdfProyectoActions
{
    public function executeExportar(sfWebRequest $request)
    {
        $proyecto = Doctrine::getTable('Proyecto')->find($request->getParameter('id'));
        if( $proyecto ) {

            // GENERO UN WORKSPACE TIBCO, LO COMPRIMO Y  DESCARGO PARA EL USUARIO

            // Defino directorios. Nombre del workspace, Directorio temporal donde
            // trabajar, directorio del workspace y nombre del zip a crear
            $ws_name = 'ws'.$proyecto->getNombre();
            $temp_dir = tempnam(sys_get_temp_dir(), 'ws').'d';
            $ws_dir = $temp_dir.DIRECTORY_SEPARATOR.$ws_name;
            $zip_file = $temp_dir.'.zip';

            // Creo directorio temporal de trabajo y genero alli el workspace
            mkdir( $temp_dir );
            $ret = $proyecto->generateWorkspace($ws_dir);

            // Paso a comprimir el archivo
            $zip = new Zipper();
            if ($zip->open($zip_file, ZIPARCHIVE::CREATE) === TRUE) {
                $zip->addFolder($temp_dir.DIRECTORY_SEPARATOR);
                $zip->close();

                // Descargo al usuario
                header("Content-type: application/octet-stream");
                header ("Content-Length: " . @filesize($zip_file));
                header("Content-disposition: attachment; filename=".$ws_name.".zip");
                readfile($zip_file);
                header ("Content-Type: text/html");
            }
        }
        $this->redirect($this->getModuleName().'/index');
    }

    public function executeImportar(sfWebRequest $request)
    {   
        $this->proyecto = array();
        $this->proyecto['id'] = $request->getParameter('id');
        
        $proyecto = Doctrine::getTable('Proyecto')->find($request->getParameter('id'));
        $this->proyecto['name'] = $proyecto->getNombre();
    }

    public function executeImportarList(sfWebRequest $request)
    {
        // Preparo el id y name del proyecto para la proxima accion
        $this->proyecto=array();
        $this->proyecto['id'] = $request->getPostParameter('proyecto[id]');
        $this->proyecto['name'] = $request->getPostParameter('proyecto[name]');

        $files = $_FILES;

        // Controles antes de subir el archivo:
        // - Que tenga contenido
        // - Que sea permitido
        // - Que sea valido

        $this->error = array();
        if ($files['filews']['size'] == 0) {
            $this->error[] = "ERROR: Zero byte file upload";
        }
        $allowedFileTypes = array("application/zip");
        if (!in_array($files['filews']['type'], $allowedFileTypes)) {
            $this->error[] = "ERROR: File type not permitted";
        }
        if (!is_uploaded_file($files['filews']['tmp_name']))  {
            $this->error[] = "ERROR: Not a valid file upload";
        }

        if( count($this->error)>0 )
            return sfView::ERROR;

        // Bien, sigo adelante

        // Defino directorio sobre el cual trabajar
        $temp_dir = tempnam(sys_get_temp_dir(), 'ws').'d';
        mkdir( $temp_dir );

        // Descomprimo el archivo
        $zip = new Zipper();
        if ($zip->open($files['filews']['tmp_name']) === TRUE) {
            if( $zip->extractTo($temp_dir) === TRUE ) {

                // Recupero en un array la lista de documentos xpdl
                $finder = sfFinder::type('file')->name('*.xpdl');
                $this->proyecto['files'] = $finder->in($temp_dir);

                return sfView::SUCCESS;
            }

        }

        // Si llego aca es porque hubo problemas al descomprimir o tratar el zip
        return sfView::ERROR;
    }

    public function executeImportarPost(sfWebRequest $request)
    {
        $id = $request->getPostParameter('proyecto[id]');
        $files = $request->getPostParameter('proyecto[files]');

        $proyecto = Doctrine::getTable('Proyecto')->find($id);

        if( $proyecto ) {
            $this->error = $proyecto->processWorkspace($files);
        }

        if( count($this->error)>0 )
            return sfView::ERROR;
    }
}
