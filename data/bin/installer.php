<?php

// Habilito los plugins

$this->logSection('Instalacion PSDF', 'Habilitando plugins...');
$this->enablePlugin('sfDoctrineGuardPlugin');
$this->enablePlugin('psdfCorePlugin');
$this->reloadTasks();
$this->log('Ok!');

// ...continua en tarea psdf:initialize...

?>
