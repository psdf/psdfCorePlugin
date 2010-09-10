
<h1>##PROCESS_NAME## > ##ACTIVITY_NAME##</h1>

<form method="post" action="<?php echo url_for('##MODULE##/##ACTIVITY##') ?>">

    ##PTN_URL_TEMPLATE##

    <input type="hidden" name="f" value="<?php echo $f->getId() ?>" />

    <?php // Acciones de la actividad (continuar, abortar, etc..) ?>
    <?php // No deberian expresarse si la actividad se autocompleta sola ?>
    <?php if( '0'=='##ACTIVITY_AUTOCOMPLETE##' ): ?>
        <li>
            <input type="submit" value="Continuar" />
        </li>
    <?php endif; ?>
<?php echo "</form>" ?>
