<?php

  /**
   * Crea un workspace Eclipse y un proyecto Tibco
   * Argumentos
   *   $arguments['path'] Path del workspace a generar
   *   $arguments['packages'] Listad de paquetes xpdl a generar
   * Opciones
   *   $options[]
   */
  class psdfGenerateWorkspace
  {
    public function execute($arguments = array(), $options = array())
    {
        $workspaceDir = UtilPsdf::fixPath( $arguments['path'] );
        $packagesDir = $workspaceDir.'/proyecto/Process Packages/';

        if (is_dir($workspaceDir))
        {
          throw new sfCommandException(sprintf('The workspace "%s" already exists.', $workspaceDir));
        }

        $filesystem = new sfFilesystem();

        // Create basic workspace structure
        $skeletonDir = dirname(__FILE__).'/../../data/generator/skeleton/psdfWorkspace';
        $finder = sfFinder::type('any')->discard('.sf');
        $filesystem->mirror($skeletonDir, $workspaceDir, $finder);

        // Create packages files (subdir por cada macro)
        $packages = $arguments['packages'];
        foreach($packages as $pack)
        {
            if( !is_dir($packagesDir.$pack['macro']) )
                $filesystem->mkdirs($packagesDir.$pack['macro']);

            $file = $packagesDir.$pack['macro'].'/'.$pack['name'].'.xpdl';
            $filesystem->touch($file);
            file_put_contents($file, $pack['xpdl']);
        }        
    }

  }
?>