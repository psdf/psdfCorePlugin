
<?php use_helper('Form', 'Object', 'Javascript')?>

<div id="sf_admin_container">
  <div id="sf_admin_content">

    <h1>##PROCESS_NAME## > ##ACTIVITY_NAME##</h1>
  
    <?php echo form_tag("##MODULE##/##ACTIVITY##", array("id"=>"form")) ?>

		  <?php // logica particular del patron si la hay ?>
		  <?php if( isset($include) ): ?>
			  <?php include($include); ?>
			<?php endif; ?>
	
		  <?php echo input_hidden_tag('f', $f->getId()) ?>
	  
		  <?php // Acciones de la actividad (continuar, abortar, etc..) ?>
		  <?php // No deberian expresarse si la actividad se autocompleta sola ?>
		  <?php if( '0'=='##ACTIVITY_AUTOCOMPLETE##'): ?>
		    <?php echo submit_tag('Continuar'); ?>
		  <?php endif; ?>
	  <?php echo "</form>" ?>
	  
  </div>
</div>      