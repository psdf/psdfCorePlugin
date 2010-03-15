<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico" />
    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>

    <?php //echo stylesheet_tag('../js/ext-js/tutorial/ExtStart') ?>
	<?php echo stylesheet_tag('../js/ext-js/resources/css/ext-all.css') ?>
	<?php echo stylesheet_tag('../js/ext-js/resources/css/xtheme-gray') ?>

	<?php echo javascript_include_tag('ext-js/adapter/ext/ext-base') ?>
	<?php echo javascript_include_tag('ext-js/ext-all') ?>

  </head>
  <body>
    <h3><?php echo link_to('Home', 'psdfResumen/index')?></h3>
    <?php echo $sf_content ?>
  </body>
</html>
