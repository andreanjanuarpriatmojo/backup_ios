<aside class="main-sidebar sidebar-dark-primary elevation-4">

    <a href="<?php echo base_url('/') ?>" class="brand-link">
      <img src="<?php echo base_url('assets/dist/img/AdminLTELogo.png') ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">iOS Apps</span>
    </a>

    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="<?php echo base_url('user')?>" class="nav-link">
                        <i class="nav-icon fas fa-user"></i>
                        <p>User</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<?php echo base_url('perangkat')?>" class="nav-link">
                        <i class="nav-icon fas fa-clipboard-list"></i>
                        <p>Perangkat</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<?php echo base_url('auth/logout') ?>" class="nav-link">
                        <i class="nav-icon fas fa-sign-out-alt"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

</aside>