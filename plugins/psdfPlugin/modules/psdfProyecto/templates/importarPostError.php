<div id="sf_admin_container">
  <h1>Importar proyecto <?php echo $proyecto['name'] ?></h1>
  
  <div id="sf_admin_header">
      </div>

  <div id="sf_admin_content">

      <p>Hubo errores en el procesamiento del archivo cargado:</p>

      <ul>
      <?php foreach( $error as $err ): ?>
          <li><?php echo $err['error'] ?></li>
      <?php endforeach; ?>
      </ul>

  </div>
</div>