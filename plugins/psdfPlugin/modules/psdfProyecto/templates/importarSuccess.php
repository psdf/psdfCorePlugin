<div id="sf_admin_container">
  <h1>Importar proyecto <?php echo $proyecto['name'] ?></h1>

  <div id="sf_admin_header">
      </div>

  <div id="sf_admin_content">      

    <div class="sf_admin_form">
        
        <form method="post" name="fuws" action="<?php echo url_for('psdfProyecto/importarList') ?>" enctype="multipart/form-data">
          <input type="hidden" name="sf_method" value="put" />
          <input type="hidden" name="proyecto[id]" value="<?php echo $proyecto['id']?>" id="proyecto_id" />
          <input type="hidden" name="proyecto[name]" value="<?php echo $proyecto['name']?>" id="proyecto_name" />
          <input type="hidden" name="proyecto[_csrf_token]" value="4475a23eeb032296a407d6c23ba73b2d" id="proyecto__csrf_token" />

          <fieldset id="sf_fieldset_none">
            <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
                <div>
                    <label for="proyecto_path">Zip Workspace a importar</label>
                    <div class="content">
                        <input type="file" name="filews" id="filews" />
                    </div>
                    <div class="help">Comprima el workspace en un zip y subalo</div>
                </div>
            </div>
          </fieldset>

          <ul class="sf_admin_actions">
            <li class="sf_admin_action_save"><input type="submit" value="Continuar" /></li>
          </ul>

      </form>
    </div>
  </div>

  <div id="sf_admin_footer">
  </div>
</div>