<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico" />

    <?php // librerias del componente menuBar ?>
    <script type="text/javascript" src="/psdfPlugin/js/JSCookMenu/JSCookMenu.js"></script>
    <link rel="stylesheet" href="/psdfPlugin/js/JSCookMenu/ThemeGray/theme.css" type="text/css" />
    <script type="text/javascript" src="/psdfPlugin/js/JSCookMenu/ThemeGray/theme.js"></script>

    <?php // Para los templates echos a mano y requieran el formato del sfadmin ?>
    <?php use_stylesheet('/sfDoctrinePlugin/css/global') ?>
    <?php use_stylesheet('/sfDoctrinePlugin/css/default') ?>

    <?php // PSDF ?>
    <?php use_stylesheet('/psdfPlugin/css/psdf') ?>
    <?php use_javascript('/psdfPlugin/js/psdf_util') ?>

    <?php // El css del ext-js desconfigura el del sfDoctrinePlugin, a por ver las herencias... ?>
    <?php //use_stylesheet('/../js/ext-js/resources/css/ext-all') ?>
    <?php //use_javascript('/ext-js/adapter/ext/ext-base') ?>
    <?php //use_javascript('/ext-js/ext-all-debug') ?>

    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>
        
  </head>
  <body>
      <div class="header">
          <div id="logo"></div>
      </div>

      <?php include_component('psdfComponents', 'menuBar') ?>

      <div class="main">          
          <?php echo $sf_content ?>
      </div>

      <div class="footer">
          <p>
            <?php echo image_tag('/../psdfPlugin/images/icon_psdf.gif') ?>
            © 2010
            <?php echo link_to('proyecto-psdf.com.ar', 'http://www.proyecto-psdf.com.ar', array('target'=>'_blank'))?>
            -
            Powered by <?php echo image_tag('/../psdfPlugin/images/symfony_button.gif') ?>
          </p>          
      </div>
  </body>
</html>
