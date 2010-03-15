<h1>Procesos List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Nombre</th>
      <th>Rel paquete</th>
      <th>Imagen</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($procesos as $proceso): ?>
    <tr>
      <td><a href="<?php echo url_for('psdfDeprueba2/show?id='.$proceso->getId()) ?>"><?php echo $proceso->getId() ?></a></td>
      <td><?php echo $proceso->getNombre() ?></td>
      <td><?php echo $proceso->getRelPaquete() ?></td>
      <td><?php echo $proceso->getImagen() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('psdfDeprueba2/new') ?>">New</a>
