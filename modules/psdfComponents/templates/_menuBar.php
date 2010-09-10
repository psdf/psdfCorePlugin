<style type="text/css">
</style>

<script type="text/javascript">
    /* Un ejemplo de myMenu:
      myMenu =
        [
            ['', 'HomE', '/index.php', 'target', 'description'],  // a menu item
            _cmSplit,
            ['', 'Menu1', '#', 'target', 'description'],  // a menu item
            ['', 'Menu2', '#', 'target', 'description'],  // a menu item
            _cmSplit,
            ['', 'Menu3', '#', 'target', 'description',   // a folder item
                ['', 'Submenu31', 'url31.php', 'target', 'description'],  // a menu item
                ['', 'Submenu32', 'url32.php', 'target', 'description']  // a menu item
            ],
            _cmSplit,
            ['', 'Menu4', '#', 'target', 'description',   // a folder item
                ['', 'Submenu41', 'url41.php', 'target', 'description'],  // a menu item
                ['', 'Submenu42', 'url42.php', 'target', 'description']  // a menu item
            ],
            _cmSplit,
            ['', 'Macro', '#', 'target', 'description',   // a folder item
                ['', 'Paquete', '#', 'target', 'description',  // a menu item
                    ['', 'Proceso1', 'url41.php', 'target', 'description'],  // a menu item
                    ['', 'Proceso2', 'url42.php', 'target', 'description']  // a menu item
                ]
            ]
        ]
     */
    var myMenu = <?php echo $menu ?>;
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
