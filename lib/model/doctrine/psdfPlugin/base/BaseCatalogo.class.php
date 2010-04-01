<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Catalogo', 'psdf');

/**
 * BaseCatalogo
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $nombre
 * @property string $definicion
 * 
 * @method string   getNombre()     Returns the current record's "nombre" value
 * @method string   getDefinicion() Returns the current record's "definicion" value
 * @method Catalogo setNombre()     Sets the current record's "nombre" value
 * @method Catalogo setDefinicion() Sets the current record's "definicion" value
 * 
 * @package    psdf
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseCatalogo extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('psdfwf.catalogo');
        $this->hasColumn('nombre', 'string', 30, array(
             'type' => 'string',
             'notnull' => true,
             'unique' => true,
             'length' => '30',
             ));
        $this->hasColumn('definicion', 'string', null, array(
             'type' => 'string',
             ));
    }

    public function setUp()
    {
        parent::setUp();
        
    }
}