<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $proceso->getId() ?></td>
    </tr>
    <tr>
      <th>Nombre:</th>
      <td><?php echo $proceso->getNombre() ?></td>
    </tr>
    <tr>
      <th>Rel paquete:</th>
      <td><?php echo $proceso->getRelPaquete() ?></td>
    </tr>
    <tr>
      <th>Imagen:</th>
      <td><?php echo $proceso->getImagen() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('psdfDeprueba2/edit?id='.$proceso->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('psdfDeprueba2/index') ?>">List</a>
