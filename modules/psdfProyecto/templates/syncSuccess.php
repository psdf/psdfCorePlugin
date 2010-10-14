<div id="sf_admin_container">
    <h1>Importar Xpdl al proyecto <i><?php echo $proyecto['name'] ?></i></h1>

  <div id="sf_admin_header">
      </div>

  <div id="sf_admin_content">

      <p>Seleccionar los paquetes a importar 
         (Los paquetes son buscados en la ruta definida en <i>sfConfig::get('psdf_xpdl_dir')</i>)</p>

    <div class="sf_admin_form">

        <form action="<?php echo url_for('psdfProyecto/importarPost') ?>" method="post">
            <input type="hidden" name="sf_method" value="put" />
            <input type="hidden" name="proyecto[id]" value="<?php echo $proyecto['id']?>" id="proyecto_id" />
            <input type="hidden" name="proyecto[name]" value="<?php echo $proyecto['name']?>" id="proyecto_name" />
            <input type="hidden" name="proyecto[_csrf_token]" value="4475a23eeb032296a407d6c23ba73b2d" id="proyecto__csrf_token" />
            <div class="sf_admin_list">
              <table cellspacing="0">
              <thead>
                <tr>
                  <th id="sf_admin_list_batch_actions"><input id="sf_admin_list_batch_checkbox" type="checkbox" onclick="checkAll();" /></th>
                  <th class="sf_admin_text sf_admin_list_th_macro">Macro</th>
                  <th class="sf_admin_text sf_admin_list_th_paquete">Paquete</th>
                  <th class="sf_admin_text sf_admin_list_th_modificado">Modificado el</th>
                  <th class="sf_admin_text sf_admin_list_th_archivo">Archivo</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th colspan="4"><?php echo count($proyecto['files']) . ' Paquetes encontrados' ?></th>
                </tr>
              </tfoot>
              <tbody>
                <?php echo $rowT='' ?>
                <?php foreach( $proyecto['files'] as $file ): ?>

                    <?php $rowT = ($rowT!="odd") ? "odd" : "even" ?>

                    <tr class="sf_admin_row <?php echo $rowT ?>">
                      <td>
                        <input type="checkbox" name="proyecto[files][]" value="<?php echo $file['nombre'] ?>" class="sf_admin_batch_checkbox" /></td>
                      <td class="sf_admin_text sf_admin_list_td_macro">
                        <?php echo $file['macro'] ?></td>
                      <td class="sf_admin_text sf_admin_list_td_paquete">
                        <?php echo $file['package'] ?></td>
                      <td class="sf_admin_text sf_admin_list_td_modificado">
                        <?php echo date ("F d Y H:i:s", $file['fecha']) ?></td>
                      <td class="sf_admin_text sf_admin_list_td_archivo">
                        <?php echo $file['nombre'] ?></td>
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
