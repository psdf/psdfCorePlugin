<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico" />

    <?php use_javascript('/ext-js/adapter/ext/ext-base') ?>
    <?php use_javascript('/ext-js/ext-all') ?>
    <?php use_javascript('/psdfPlugin/js/psdf_util.js') ?>

    <?php //echo stylesheet_tag('../js/ext-js/tutorial/ExtStart') ?>
    <?php use_stylesheet('/js/ext-js/resources/css/ext-all') ?>
    <?php use_stylesheet('/js/ext-js/resources/css/xtheme-blue') ?>
    <?php use_stylesheet('/sfDoctrinePlugin/css/global') ?>
    <?php use_stylesheet('/sfDoctrinePlugin/css/default') ?>

    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>

  </head>
  <body>
    <h3><?php echo link_to('Home', 'psdfResumen/index')?></h3>
    <?php echo $sf_content ?>
  </body>
</html>
