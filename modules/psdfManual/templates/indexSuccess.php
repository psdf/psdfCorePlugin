<?php use_stylesheet('/sfDoctrinePlugin/css/global.css', 'first') ?> 
<?php use_stylesheet('/sfDoctrinePlugin/css/default.css', 'first') ?> 

<div id="sf_admin_container">
  <h1>Frontend core PSDF</h1>
  <hr />
  <div id="sf_admin_header">
  </div>

  <div id="sf_admin_content">
		<ul>
			<li><?php echo link_to('Introduccion', 'psdfManual/show?chapter=1-Introduccion')?></li>
	    <li><?php echo link_to('Instalacion', 'psdfManual/show?chapter=2-Instalacion')?></li>
	    <li><?php echo link_to('Paquetes y procesos', 'psdfManual/show?chapter=3-Paquetes_y_procesos')?></li>
	    <li><?php echo link_to('Patrones', 'psdfManual/show?chapter=4-Patrones')?></li>
	    <li><?php echo link_to('Catalogos', 'psdfManual/show?chapter=5-Catalogos')?></li>
		</ul>  
  </div>

  <div id="sf_admin_footer">
  </div>

</div>
