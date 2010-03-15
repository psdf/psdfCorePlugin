<?php use_helper('Form', 'Object', 'Javascript')?>

<?php use_javascript('/psdfPlugin/js/psdf_util') ?>
<?php use_stylesheet('/sfDoctrinePlugin/css/global.css', 'first') ?>
<?php use_stylesheet('/sfDoctrinePlugin/css/default.css', 'first') ?>

<fieldset id="sf_fieldset_none">
    <?php foreach( $display as $disp ): ?>
    <div class="sf_admin_form_row sf_admin_form_field_<?php echo $disp ?>">
        <div>
            <label for="proceso_<?php echo $disp ?>">
                <?php if( isset($fields[$disp]) && isset($fields[$disp]['name']) ): ?>
                    <?php echo $fields[$disp]['name'] ?>
                <?php else: ?>
                    <?php echo $disp ?>
                <?php endif; ?>
            </label>
            <?php $attrib = UtilPsdf::fromCamelCase($classname).'['.$disp.']'; ?>
            <?php echo input_tag( $attrib, $obj->$disp ) ?>
        </div>
    </div>
    <?php endforeach; ?>
</fieldset>
