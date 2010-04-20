<div id="sf_admin_container">
  <h1><?php echo $title ?></h1>

  <div id="sf_admin_header">
      </div>

  <div id="sf_admin_content">

    <div class="sf_admin_form">

        <form action="<?php echo url_for('psdfProyecto/'.$post_action) ?>" method="post">
            <input type="hidden" name="sf_method" value="put" />
            <input type="hidden" name="proyecto[id]" value="<?php echo $proyecto['id']?>" id="proyecto_id" />
            <input type="hidden" name="proyecto[default_path]" value="<?php echo $proyecto['default_path']?>" id="proyecto_id" />
            <input type="hidden" name="proyecto[_csrf_token]" value="4475a23eeb032296a407d6c23ba73b2d" id="proyecto__csrf_token" />
            <div class="sf_admin_list">
              <table cellspacing="0">
              <thead>
                <tr>
                  <th id="sf_admin_list_batch_actions"><input id="sf_admin_list_batch_checkbox" type="checkbox" onclick="checkAll();" /></th>
                  <th class="sf_admin_text sf_admin_list_th_nombre">Nombre</th>
                  <th class="sf_admin_text sf_admin_list_th_imagen">Estado</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th colspan="3"><?php echo count($proyecto['files']) . ' Paquetes encontrados' ?></th>
                </tr>
              </tfoot>
              <tbody>
                <?php echo $rowT='' ?>
                <?php foreach( $proyecto['files'] as $file ): ?>

                    <?php if( $rowT!="odd" ): ?>
                        <?php $rowT="odd" ?>
                    <?php else: ?>
                        <?php $rowT = "even" ?>
                    <?php endif; ?>

                    <tr class="sf_admin_row <?php echo $rowT ?>">
                      <td>
                        <input type="checkbox" name="proyecto[files][]" value="<?php echo $file ?>" class="sf_admin_batch_checkbox" />
                      </td>
                      <td class="sf_admin_text sf_admin_list_td_nombre">
                        <?php echo $file ?></td>
                      <td class="sf_admin_text sf_admin_list_td_paquete">
                        &nbsp;</td>
                    </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
          <ul class="sf_admin_actions">
            <li class="sf_admin_action_save"><input type="submit" value="Continuar" /></li>
          </ul>
        </form>
    </div>
  </div>

  <div id="sf_admin_footer">
  </div>
</div>

<script type="text/javascript">
/* <![CDATA[ */
function checkAll()
{
  var boxes = document.getElementsByTagName('input'); for(var index = 0; index < boxes.length; index++) { box = boxes[index]; if (box.type == 'checkbox' && box.className == 'sf_admin_batch_checkbox') box.checked = document.getElementById('sf_admin_list_batch_checkbox').checked } return true;
}
/* ]]> */
</script>
