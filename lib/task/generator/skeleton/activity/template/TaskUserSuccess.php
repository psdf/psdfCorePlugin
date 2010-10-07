
<h1>##PROCESS_NAME## > ##ACTIVITY_NAME##</h1>

<form method="post" action="<?php echo url_for('##MODULE##/##ACTION##') ?>">

    ##PTN_SET_TEMPLATE##

    <input type="hidden" name="f" value="<?php echo $f->getId() ?>" />

    <li>
        <input type="submit" value="Continuar" />
    </li>
<?php echo "</form>" ?>
