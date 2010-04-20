<h1>Backend PSDF</h1>

<hr />

<h2>- <?php echo link_to('Organizaciones', 'psdfOrganizacion/index') ?></h2>

<h2>- <?php echo link_to('Proyectos', 'psdfProyecto/index') ?></h2>

<h2>- <?php echo link_to('Macros y Paquetes', 'psdfPaquete/index') ?></h2>

<h2>- <?php echo link_to('Procesos', 'psdfProceso/index') ?></h2>

<h2>- <?php echo link_to('Exportar workspace TIBCO', 'psdfProyecto/exportar') ?></h2>

<h2 onclick="toogleStatus('divPatrones')" style="cursor:pointer;">- Patrones</h2>
<div id="divPatrones">
    Los patrones del psdf hoy pueden verse en <code>[myProyect]/plugins/psdfPlugin/lib/pattern</code>.<br/>
    Pueden crearse nuevos patrones o personalizarse los del psdf en <code>[myProyect]/lib/pattern</code>.
</div>

<h2>- <?php echo link_to('Catalogos', 'psdfCatalogo/index') ?></h2>

<h2 onclick="toogleStatus('divConstruir')" style="cursor:pointer;">- Construir proceso</h2>
<div id="divConstruir" style="padding: 0em 3em 0em 3em;">
    <div class="sf_admin_form">
        <?php echo form_tag("psdfResumen/build") ?>
        <fieldset id="sf_fieldset_none">
            <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
                <div>
                    <label for="macro_nombre">Proceso</label>
                    <?php
                    //echo select_tag('proceso[id]', objects_for_select($procList, 'getId', 'getNombreConPaquete') )
                    //echo $listaProc->render('proceso');
                    ?>
                    <select id="proceso[id]" name="proceso[id]">
                        <?php foreach($procList as $proc){ ?>
                        <option value="<?php echo $proc->getId() ?>"><?php echo $proc->getNombreConPaquete()  ?></option>
                        <?php } ?>
                    </select>

                </div>
            </div>
        </fieldset>
        <ul class="sf_admin_actions">
            <li class="sf_admin_action_save">
                <input type="submit" value="Construir" />
            </li>
        </ul>
        <?php echo "</form>" ?>
    </div>
</div>

<h2 onclick="toogleStatus('divEjecutar')" style="cursor:pointer;">- Ejecutar proceso</h2>
<div id="divEjecutar" style="padding: 0em 3em 0em 3em;">
    <div class="sf_admin_form">
        <?php echo form_tag("psdfResumen/execute") ?>
        <fieldset id="sf_fieldset_none">
            <div class="sf_admin_form_row sf_admin_text sf_admin_form_field_nombre">
                <div>
                    <label for="macro_nombre">Proceso</label>
                    <?php
                    //echo select_tag('proceso[id]', objects_for_select($procList, 'getId', 'getNombreConPaquete') )
                    echo $listaProc->render('proceso');
                    ?>
                </div>
            </div>
        </fieldset>
        <ul class="sf_admin_actions">
            <li class="sf_admin_action_save">
                <input type="submit" value="Ejecutar" />
            </li>
        </ul>
        <?php echo "</form>" ?>
    </div>
</div>

<script type="text/javascript">
    toogleStatus('divConstruir');
    toogleStatus('divEjecutar');
    toogleStatus('divPatrones');
</script>
