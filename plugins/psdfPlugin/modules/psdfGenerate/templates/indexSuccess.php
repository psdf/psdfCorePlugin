<?php use_helper('Form', 'Object')?>
<?php use_stylesheet('/sfDoctrinePlugin/css/global.css', 'first') ?> 
<?php use_stylesheet('/sfDoctrinePlugin/css/default.css', 'first') ?> 

<div id="sf_admin_container">
  <h1>Pruebas psdf</h1>

  <div id="sf_admin_header">
  </div>

  <div id="sf_admin_content">
   
    <h2><?php echo link_to('Organizaciones', 'organizacion/index') ?></h2>

    <h2><?php echo link_to('Macros/Paquetes', 'paquete/index') ?></h2>
    
    <h2><?php echo link_to('Procesos', 'proceso/index') ?></h2>

    <h2>Crear un Macro (aplicativo symfony)</h2> 
	  <div class="sf_admin_form">	  
      <?php echo form_tag("generate/crearMacro") ?>	   
	      <fieldset id="sf_fieldset_none">
          <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
            <div>
              <label for="macro_nombre">Organizacion</label>
              <?php echo select_tag('macro[rel_organizacion]', objects_for_select($orgList, 'getId', 'getNombre') ) ?>
            </div>
          </div>
	        <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
	          <div>
	            <label for="macro_nombre">Macro</label>
              <?php echo select_tag('macro[id]', objects_for_select($paqList, 'getId', 'getNombre') ) ?>
	          </div>
	        </div>
	      </fieldset>    
	      <ul class="sf_admin_actions">
 	        <li class="sf_admin_action_save">
 	          <input type="submit" value="Save" />
	        </li>  
	      </ul>
      <?php echo "</form>" ?>
    </div>

    <h2>Crear un Paquete (modulo symfony)</h2> 
    <div class="sf_admin_form">   
      <?php echo form_tag("generate/crearPaquete") ?>     
        <fieldset id="sf_fieldset_none">
          <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
            <div>
              <label for="macro_nombre">Macro</label>
              <?php echo input_tag('macro[nombre]') ?>
            </div>
          </div>
        </fieldset>    
        <ul class="sf_admin_actions">
          <li class="sf_admin_action_save">
            <input type="submit" value="Save" />
          </li>  
        </ul>
      <?php echo "</form>" ?>
    </div>
    
  </div>

  <div id="sf_admin_footer">

      </div>
</div>
