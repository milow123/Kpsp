<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('user') ?>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-baby"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Mon Baby</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my">

    <!-- QUERY MENU -->
    <?php
    $level_id = $this->session->userdata('level_id');
    //um = usermen
    $query_menu = "SELECT user_menu.id, user_menu.menu
                    FROM user_menu JOIN user_access_menu 
                    ON user_menu.id = user_access_menu.menu_id
                    WHERE user_access_menu.level_id = $level_id
                    
                    ";
    $menu = $this->db->query($query_menu)->result_array();
    ?>

    <!-- LOOPING MENU-->
    <?php foreach ($menu as $m) : ?>
        <div class="sidebar-heading">
            <?= $m['menu'] ?>
        </div>
        <!--SIAPKAN SUB MENU-->
        <?php
        $menuId = $m['id'];
        $querySubmenu = "SELECT *
                            FROM `user_sub_menu`
                            WHERE `menu_id` = $menuId
                            AND `is_active` = 1
                            ";
        $subMenu = $this->db->query($querySubmenu)->result_array();

        ?>
        <?php foreach ($subMenu as $sm) : ?>
            <!-- Nav Item - Dashboard -->
            <?php if ($title == $sm['nama_menu']) : ?>
                <li class="nav-item active">
                <?php else : ?>
                <li class="nav-item">
                <?php endif; ?>
                <a class="nav-link pb-0" href="<?= base_url($sm['url']) ?>">
                    <i class="<?= $sm['icon'] ?>"></i>
                    <span><?= $sm['nama_menu'] ?></span></a>

                </li>
            <?php endforeach; ?>
            <!-- Divider -->
            <hr class="sidebar-divider mt-3">

        <?php endforeach; ?>

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

</ul>
<!-- End of Sidebar -->