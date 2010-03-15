<?php use_helper('Form', 'Object')?>
<?php use_stylesheet('/sfDoctrinePlugin/css/global.css', 'first') ?> 
<?php use_stylesheet('/sfDoctrinePlugin/css/default.css', 'first') ?> 

<div id="sf_admin_container">
  <h1>Edit Paquete - Importar</h1>
  <div id="sf_admin_header">
  </div>
  <div id="sf_admin_content">
    <?php echo form_tag('psdfPaquete/xpdlimp', 'multipart=true') ?>
      <?php echo input_hidden_tag('id', $id)?>    
      <fieldset id="sf_fieldset_none">        
      
        <div class="sf_admin_form_row">
	        <div>
	          <?php echo label_for('ldata', 'Paquete Xpdl', 'class="required" ') ?>
	          <?php echo input_file_tag('data') ?>
	        </div>
        </div>
             
      </fieldset>
      <ul class="sf_admin_actions">
        <li class="sf_admin_action_list"><?php echo link_to('Cancel', 'psdfPaquete/index') ?></li>
        <li class="sf_admin_action_save"><input type="submit" value="Save" /></li>
      </ul>    
    <?php echo "</form>" ?>  
  </div>
</div>