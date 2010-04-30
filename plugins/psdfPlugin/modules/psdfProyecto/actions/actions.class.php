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
        $default_path = str_replace('__', ' ',$this->getRequest()->getCookie('psdf_ws_path'));
        if( !$default_path ) {
            $proyecto = Doctrine::getTable('Proyecto')->find($request->getParameter('id'));
            if( $proyecto ) {
                $default_path = '/home/usuario/Workspace '.$proyecto->getNombre();
            }
            else {
                $default_path = '/home/usuario/WorkspacePSDF';
            }
        }

        $this->proyecto = array();
        $this->proyecto['id'] = $request->getParameter('id');
        $this->proyecto['default_path'] = $default_path;
        $this->info = "Usuarios linux:<br />".
                      "&nbsp;&nbsp;- La carpeta que contendrá el workspace debe tener permisos de escritura: <i>chmod 777 <u>[path]</u></i><br/>".
                      "&nbsp;&nbsp;- Una vez generado el workspace debe asignarsele los mismos permisos: <i>chown <u>[usuario]</u>:<u>[grupo]</u> <u>[workspace]</u> -R</i> ó con: <i>chmod 777 <u>[workspace]</u> -R</i>";
        $this->post_action = 'exportarPost';
        $this->title = 'Exportar proyecto a workspace Tibco Studio Community 3.2';
    }

    public function executeExportarPost(sfWebRequest $request)
    {
        $id = $request->getPostParameter('proyecto[id]');

        $default_path = $request->getPostParameter('proyecto[default_path]');
        $this->getResponse()->setCookie('psdf_ws_path', str_replace(' ', '__', $default_path));

        $proyecto = Doctrine::getTable('Proyecto')->find($id);

        if( $proyecto ) {
            $ret = $proyecto->generateWorkspace($default_path);
        }

        $this->redirect($this->getModuleName().'/index');
    }

    public function executeImportar(sfWebRequest $request)
    {
        $default_path = str_replace('__', ' ',$this->getRequest()->getCookie('psdf_ws_path'));
        if( !$default_path ) {
            $proyecto = Doctrine::getTable('Proyecto')->find($request->getParameter('id'));
            if( $proyecto ) {
                $default_path = '/home/usuario/Workspace '.$proyecto->getNombre();
            }
            else {
                $default_path = '/home/usuario/WorkspacePSDF';
            }
        }
        
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

        if( !is_dir($default_path) )
        {
          throw new sfException(sprintf('El workspace "%s" no es un directorio valido.', $default_path));
        }

        $this->getResponse()->setCookie('psdf_ws_path', str_replace(' ', '__', $default_path));

        $this->proyecto = array();
        $this->proyecto['id'] = $request->getPostParameter('proyecto[id]');
        $this->proyecto['default_path'] = $default_path;
        $this->post_action = 'importarPost';
        $this->title = 'Importar workspace desde Tibco Studio Community 3.2';

        $subpath='-';
        $proyecto = Doctrine::getTable('Proyecto')->find( $this->proyecto['id'] );
        if( $proyecto )
            $subpath = $proyecto->getSubPathInWorkspace();

        $packages_full_dir = UtilPsdf::fixPath($this->proyecto['default_path']).DIRECTORY_SEPARATOR.$subpath;

        if( !is_dir($packages_full_dir) )
        {
          throw new sfException(sprintf('El directorio de paquetes xpdl "%s" no existe o es invalido.', $packages_full_dir));
        }

        $this->proyecto['files'] = UtilPsdf::getDirToArray($packages_full_dir, 'files');
        $this->proyecto['packages_full_dir'] = $packages_full_dir;
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
