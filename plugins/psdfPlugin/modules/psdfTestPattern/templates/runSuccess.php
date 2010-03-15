<?php use_helper('Form', 'Object', 'Javascript')?>

<div id="sf_admin_container">
    <div id="sf_admin_content">

        <h1><?php 'Probando patron '.$patternName ?></h1>

        <?php echo form_tag("psdfTestPattern/resume", array("id"=>"form")) ?>

            <?php // logica particular del patron si la hay ?>
            <?php if( isset($include) ): ?>
                <?php include($include); ?>
            <?php endif; ?>

            <?php echo submit_tag('Continuar'); ?>

        <?php echo "</form>" ?>
	
  </div>
</div>