<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Proceso', 'psdf');

/**
 * BaseProceso
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $nombre
 * @property integer $rel_paquete
 * @property string $imagen
 * @property Paquete $Paquete
 * @property Coordenada $Coordenadas2
 * @property Doctrine_Collection $Flow
 * 
 * @method string              getNombre()       Returns the current record's "nombre" value
 * @method integer             getRelPaquete()   Returns the current record's "rel_paquete" value
 * @method string              getImagen()       Returns the current record's "imagen" value
 * @method Paquete             getPaquete()      Returns the current record's "Paquete" value
 * @method Coordenada          getCoordenadas2() Returns the current record's "Coordenadas2" value
 * @method Doctrine_Collection getFlow()         Returns the current record's "Flow" collection
 * @method Proceso             setNombre()       Sets the current record's "nombre" value
 * @method Proceso             setRelPaquete()   Sets the current record's "rel_paquete" value
 * @method Proceso             setImagen()       Sets the current record's "imagen" value
 * @method Proceso             setPaquete()      Sets the current record's "Paquete" value
 * @method Proceso             setCoordenadas2() Sets the current record's "Coordenadas2" value
 * @method Proceso             setFlow()         Sets the current record's "Flow" collection
 * 
 * @package    psdf
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseProceso extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('psdfwf.proceso');
        $this->hasColumn('nombre', 'string', 30, array(
             'type' => 'string',
             'notnull' => true,
             'unique' => true,
             'length' => '30',
             ));
        $this->hasColumn('rel_paquete', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('imagen', 'string', 30, array(
             'type' => 'string',
             'length' => '30',
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Paquete', array(
             'local' => 'rel_paquete',
             'foreign' => 'id'));

        $this->hasOne('Coordenada as Coordenadas2', array(
             'local' => 'id',
             'foreign' => 'rel_proceso'));

        $this->hasMany('Flow', array(
             'local' => 'id',
             'foreign' => 'rel_proceso'));
    }
}