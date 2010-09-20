<?php

/**
 * Fixes psdf directory permissions. Extendido de sfProjectPermissionesTask.class.php
 *
 */
class psdfPermissionsTask extends sfBaseTask
{
  public
    $current = null,
    $failed  = array();

  /**
   * @see sfTask
   */
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name = 'permissions';
    $this->briefDescription = 'Fixes psdf directory permissions';

    $this->detailedDescription = <<<EOF
The [psdf:permissions|INFO] task fixes psdf directory permissions:

  [./symfony psdf:permissions|INFO]
EOF;
  }

  /**
   * @see sfTask
   */
  public function execute($arguments = array(), $options = array())
  {
    $this->chmod(sfConfig::get('sf_apps_dir'), 0777);
    $this->chmod(sfConfig::get('sf_test_dir'), 0777);
    $this->chmod(sfConfig::get('sf_test_dir').'/functional', 0777);
    $this->chmod(sfConfig::get('sf_web_dir'), 0777);
  }

  /**
   * Chmod and capture any failures.
   * 
   * @param string  $file
   * @param integer $mode
   * @param integer $umask
   * 
   * @see sfFilesystem
   */
  public function chmod($file, $mode, $umask = 0000)
  {
    if (is_array($file))
    {
      foreach ($file as $f)
      {
        $this->chmod($f, $mode, $umask);
      }
    }
    else
    {
      set_error_handler(array($this, 'handleError'));

      $this->current = $file;
      @$this->getFilesystem()->chmod($file, $mode, $umask);
      $this->current = null;

      restore_error_handler();
    }
  }

  /**
   * Captures those chmod commands that fail.
   * 
   * @see http://www.php.net/set_error_handler
   */
  public function handleError($no, $string, $file, $line, $context)
  {
    $this->failed[] = $this->current;
  }
}
