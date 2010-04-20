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
        $default_path = $this->getRequest()->getCookie('psdf_ws_path');
        if( !$default_path )
            $default_path = '/home/usuario/workspacePSDF';

        $this->proyecto = array();
        $this->proyecto['id'] = $request->getParameter('id');
        $this->proyecto['default_path'] = $default_path;
        $this->info = "Usuarios linux:<br />".
                      "&nbsp;&nbsp;- La carpeta que contendrá el workspace debe tener permisos de escritura: <i>chmod 777 <u>[path]</u></i><br/>".
                      "&nbsp;&nbsp;- Una vez generado el workspace debe asignarsele los mismos permiso: <i>chown <u>[usuario]</u>:<u>[grupo]</u> <u>[workspace]</u> -R</i> ó con: <i>chmod 777 <u>[workspace]</u> -R</i>";
        $this->post_action = 'exportarPost';
        $this->title = 'Exportar proyecto a workspace Tibco Studio Community 3.2';
    }

    public function executeExportarPost(sfWebRequest $request)
    {
        $id = $request->getPostParameter('proyecto[id]');

        $default_path = $request->getPostParameter('proyecto[default_path]');
        $this->getResponse()->setCookie('psdf_ws_path', $default_path);

        $proyecto = Doctrine::getTable('Proyecto')->find($id);

        if( $proyecto )
        {
            $ret = $proyecto->generateWorkspace($default_path);
        }

        $this->redirect($this->getModuleName().'/index');
    }

    public function executeImportar(sfWebRequest $request)
    {
        $default_path = $this->getRequest()->getCookie('psdf_ws_path');
        if( !$default_path )
            $default_path = '/home/usuario/workspacePSDF';

        $this->proyecto = array();
        $this->proyecto['id'] = $request->getParameter('id');
        $this->proyecto['default_path'] = $default_path;
        $this->info = '';
        $this->post_action = 'importarList';
        $this->title = 'Importar workspace desde Tibco Studio Community 3.2';

        // Uso el mismo template que para exportar
        $this->setTemplate('exportar');
    }

    public function executeImportarList(sfWebRequest $request)
    {
        $default_path = $request->getPostParameter('proyecto[default_path]');
        $this->getResponse()->setCookie('psdf_ws_path', $default_path);

        $this->proyecto = array();
        $this->proyecto['id'] = $request->getPostParameter('proyecto[id]');
        $this->proyecto['default_path'] = $default_path;
        $this->post_action = 'importarPost';
        $this->title = 'Importar workspace desde Tibco Studio Community 3.2';

        $packagesDir = UtilPsdf::fixPath($this->proyecto['default_path']).'/proyecto/Process Packages';

        if( !is_dir($packagesDir) )
        {
          throw new sfException(sprintf('El workspace "%s" no existe o es invalido.', $this->proyecto['default_path']));
        }

        $this->proyecto['files'] = UtilPsdf::getDirToArray($packagesDir, 'files');
    }

    public function executeImportarPost(sfWebRequest $request)
    {
        $default_path = $request->getPostParameter('proyecto[default_path]');
        $id = $request->getPostParameter('proyecto[id]');
        $files = $request->getPostParameter('proyecto[files]');

        $proyecto = Doctrine::getTable('Proyecto')->find($id);

        if( $proyecto )
        {
            $ret = $proyecto->processWorkspace($default_path, $files);
        }

        $this->error = $ret;
        $this->title = 'Importar workspace desde Tibco Studio Community 3.2';
    }
}
