<script type="text/javascript">

    // initialise plugins
    jQuery(function(){
        jQuery('ul.sf-menu').superfish();
    });

</script>
<? //= //site_url('login/logout') ?>
<div style="position:absolute; left:794px; overflow:hidden;"><a href="javascript:;" onclick="cerrar_sesion();"><img src="<?= $this->config->item('images') ?>/cerrar_sesion.gif" title="Cerrar Sesion" style="border: 0px;"/></a></div>
<ul class="sf-menu">
    <?php 
    $menu = $this->menu_model->get_menu();
    foreach ($menu as $items) { ?>
        <li>
            <a href="#" onclick="openurl('<?= $items['url'] ?>');return false;"><?= $items['nombre'] ?></a>

            <?php
            $menu2 = $this->menu_model->get_menu2($items['id_menu']);
            if ($menu2) {
                ?>
                <ul>    
                    <? foreach ($menu2 as $items2) { ?>
                        <li><a href="#" onclick="openurl('<?= $items2['url'] ?>');return false;"><?= $items2['nombre'] ?></a>
                            <?
                            $menu3 = $this->menu_model->get_menu3($items2['id_menu']);
                            if ($menu3) {
                                ?>
                                <ul> 
                                    <? foreach ($menu3 as $items3) { ?>    
                                        <li><a href="#" onclick="openurl('<?= $items3['url'] ?>');return false;"><?= $items3['nombre'] ?></a></li>
                					<? } ?>
                                </ul>
                          </li>
                    		<? }
                	} ?>
                </ul>
        <? } ?>

        </li>
<? } ?>
</ul>
