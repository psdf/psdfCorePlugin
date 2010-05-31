<div id="sf_admin_container">
  <h1>Importar proyecto <?php echo $proyecto['name'] ?></h1>

  <div id="sf_admin_header">
  </div>

  <div id="sf_admin_content">

    <div class="sf_admin_form">

        <?php if( count($error)>0 ): ?>
            <p>Los siguientes paquetes no pudieron ser procesados:</p>
            <ul>
            <?php foreach( $error as $err ): ?>
                <li><?php echo $err['file'] .' ('.$err['error'].')' ?></li>
            <?php endforeach; ?>
            </ul>
        <?php else: ?>
            <p>Proceso completado!</p>
        <?php endif; ?>

    </div>
  </div>

  <div id="sf_admin_footer">
  </div>
</div>