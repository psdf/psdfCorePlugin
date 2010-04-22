<?php

  /**
   * Crea un workspace Eclipse y un proyecto Tibco
   * Argumentos
   *   $arguments['wspath'] Path del workspace a generar
   *   $arguments['pkpath'] sub path (dentro del workspace) donde generar los xpdl
   *   $arguments['packages'] Lista de paquetes xpdl a generar
   * Opciones
   *   $options[]
   */
  class psdfGenerateWorkspace
  {
    public function execute($arguments = array(), $options = array())
    {
        $workspaceDir = UtilPsdf::fixPath( $arguments['wspath'] );
        $packagesDir = $workspaceDir.DIRECTORY_SEPARATOR.$arguments['pkpath'].DIRECTORY_SEPARATOR;

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

            $file = $packagesDir.$pack['macro'].DIRECTORY_SEPARATOR.$pack['name'].'.xpdl';
            $filesystem->touch($file);
            file_put_contents($file, $pack['xpdl']);
        }
    }

  }
?>