<style type="text/css">
</style>

<script type="text/javascript">
    var myMenu = <?php echo htmlspecialchars_decode($menu, ENT_QUOTES) ?>;
</script>

<div id="menu">
    <table width="100%" cellspacing="0">
        <tr>
            <td style="background-color: #5f5f5f; border: 0px">
                <div id="myMenuID">
                </div>
            </td>
            <td class="menu_userinfo" style="background-color: #5f5f5f; border: 0px">
                <?php echo trim($usuario) ?>
                <?php if( sfContext::getInstance()->getUser()->isAuthenticated() ): ?>
                    <?php echo ' / '.link_to('Salir', 'logout/index'); ?>
                <?php elseif($module.'/'.$action =='login/index'): ?>
                    <div style="height: 17px; padding-top: 4px; display: inline;">&nbsp;</div>
                <?php else: ?>
                    <div style="height: 17px; padding-top: 4px; display: inline;"><?php echo ' / '.link_to('Identificarme', 'login/index'); ?></div>
                <?php endif; ?>
            </td>
        </tr>
    </table>
</div>

<script type="text/javascript"><!--
	cmDraw ('myMenuID', myMenu, 'hbr', cmThemeGray);
--></script>
