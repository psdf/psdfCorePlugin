<?php

  /**
   * Crea un workspace Eclipse y un proyecto Tibco
   * Argumentos
   *   $arguments['pjpath'] Path del proyecto a generar
   *   $arguments['pjname'] Nombre del proyecto a generar
   *   $arguments['pkpath'] sub path (dentro del proyecto) donde generar los xpdl
   *   $arguments['packages'] Lista de paquetes xpdl a generar
   * Opciones
   *   $options[]
   */
  class psdfGenerateProject
  {
    public function execute($arguments = array(), $options = array())
    {
        $projectDir = UtilPsdf::fixPath( $arguments['pjpath'] );
        $packagesDir = $projectDir.DIRECTORY_SEPARATOR.$arguments['pkpath'].DIRECTORY_SEPARATOR;

        if (is_dir($projectDir))
        {
          throw new sfCommandException(sprintf('The project "%s" already exists.', $projectDir));
        }

        $filesystem = new sfFilesystem();

        // Create basic workspace structure
        $skeletonDir = dirname(__FILE__).'/../../data/generator/skeleton/psdfProject';
        $finder = sfFinder::type('any')->discard('.sf');
        $filesystem->mirror($skeletonDir, $projectDir, $finder);

        // Actualizo tokens
        $constants = array(
                'PROJECT_NAME' => $arguments['pjname'],
        );
        $finder = sfFinder::type('file')->name('.project');
        $filesystem->replaceTokens($finder->in($projectDir), '##', '##', $constants);

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