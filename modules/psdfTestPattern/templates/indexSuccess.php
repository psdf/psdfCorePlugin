<?php use_helper('Form') ?>

<?php use_javascript('/psdfPlugin/js/psdf_util') ?>
<?php use_stylesheet('/sfDoctrinePlugin/css/global.css', 'first') ?>
<?php use_stylesheet('/sfDoctrinePlugin/css/default.css', 'first') ?>

<div id="sf_admin_container">
  <h1>Testeo de patrones</h1>
  <div id="sf_admin_header">
  </div>
  <div id="sf_admin_content">
    <?php echo form_tag("psdfTestPattern/run") ?>
        <fieldset id="sf_fieldset_none">
          <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
            <div>
              <label for="definicion">Definicion</label>
              <?php echo textarea_tag('definicion', $def, "size=50x20" ) ?>
            </div>
          </div>
        </fieldset>
        <ul class="sf_admin_actions">
          <li class="sf_admin_action_save">
            <input type="submit" value="Ejecutar" />
          </li>
        </ul>
    <?php echo "</form>" ?>
  </div>
</div>
