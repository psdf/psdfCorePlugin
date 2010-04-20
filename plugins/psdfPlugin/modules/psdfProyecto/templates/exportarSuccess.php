<div id="sf_admin_container">
  <h1><?php echo $title ?></h1>

  <div id="sf_admin_header">
      </div>

  <div id="sf_admin_content">      

    <div class="sf_admin_form">
        
        <form method="post" action="<?php echo url_for('psdfProyecto/'.$post_action) ?>">
          <input type="hidden" name="sf_method" value="put" />
          <input type="hidden" name="proyecto[id]" value="<?php echo $proyecto['id']?>" id="proyecto_id" />
          <input type="hidden" name="proyecto[_csrf_token]" value="4475a23eeb032296a407d6c23ba73b2d" id="proyecto__csrf_token" />

          <fieldset id="sf_fieldset_none">
            <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
                <div>
                    <label for="proyecto_path">Workspace</label>
                    <div class="content">
                        <input type="text" name="proyecto[default_path]" value="<?php echo $proyecto['default_path'] ?>" id="proyecto_default_path" size="80" />
                    </div>
                    <div class="help"><?php echo $info ?></div>
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