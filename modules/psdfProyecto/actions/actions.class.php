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

            // GENERO UN PROYECTO TIBCO, LO COMPRIMO Y DESCARGO PARA EL USUARIO

            // Defino directorios. Nombre del proyecto, Directorio temporal donde
            // trabajar, directorio del workspace y nombre del zip a crear
            $pj_name = $proyecto->getNombre();
            $temp_dir = tempnam(sys_get_temp_dir(), 'pj').'d';
            $pj_dir = $temp_dir.DIRECTORY_SEPARATOR.$pj_name;
            $zip_file = $temp_dir.'.zip';

            // Creo directorio temporal de trabajo y genero alli el proyecto
            mkdir( $temp_dir );
            $ret = $proyecto->generateProject($pj_dir);

            if( UtilPsdf::comprimir($temp_dir.DIRECTORY_SEPARATOR, $zip_file) ) {
                UtilPsdf::descargar($zip_file, $pj_name.'.zip');
            }
            else {
                throw new sfException(sprintf('No se pudo crear y comprimir el proyecto'));
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

        $this->proyecto=array();
        $this->proyecto['name'] = $request->getPostParameter('proyecto[name]');
        
        $proyecto = Doctrine::getTable('Proyecto')->find($id);

        if( $proyecto ) {
            $this->error = $proyecto->processXpdls($files);
        }

        if( count($this->error)>0 )
            return sfView::ERROR;
    }

    public function executeSync(sfWebRequest $request) {

        // Preparo el id y name del proyecto para la proxima accion
        $this->proyecto=array();
        $this->proyecto['id'] = $request->getParameter('id');
        $proyecto = Doctrine::getTable('Proyecto')->find($request->getParameter('id'));
        $this->proyecto['name'] = $proyecto->getNombre();

        // Recupero en un array la lista de documentos xpdl
        $finder = sfFinder::type('file')->name('*.xpdl');
        $finder->ignore_version_control(true);
        $files = $finder->in(sfConfig::get('psdf_xpdl_dir'));

        // Armo otro array con informacion de los xpdl
        foreach( $files as $file) {
            $xpdl = new psdfXpdl();
            $ret = $xpdl->load($file);

            $new['nombre'] = $file;
            $new['macro'] = $ret?$xpdl->getMacroName():'';
            $new['package'] = $ret?$xpdl->getPackageName():'';
            $new['fecha'] = filemtime($file);
            $this->proyecto['files'][] = $new;
        }
        // Ordeno el array por la fecha de modificacion
        usort($this->proyecto['files'], array('self', 'comparar'));
    }

    /**
     * Para utilizar en el ordenamiento del array
     * @param <type> $x
     * @param <type> $y
     * @return <type>
     */
    public function comparar($x, $y) {
        if ($x['fecha'] == $y['fecha'])
            return 0;
        else if ($x['fecha'] > $y['fecha'])
            return -1;
        else
            return 1;
    }
}
