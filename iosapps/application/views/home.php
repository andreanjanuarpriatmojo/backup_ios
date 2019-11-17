<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
  <?php $this->load->view("template/head.php") ?>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <?php $this->load->view("template/navbar.php") ?>

  <?php $this->load->view("template/sidebar.php") ?>

  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
            <br>
            <h5><?php echo $this->session->userdata('name') ?></h5>
            <h5><?php echo $this->session->userdata('role') ?></h5>
            <?php if ($this->session->userdata('role') == 'ADMIN') { ?>
              <p>Ini untuk ADMIN</p>
            <?php } ?>
            <?php if ($this->session->userdata('role') == 'USER') { ?>
              <p>Ini untuk user</p>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- <footer class="main-footer">
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.0
    </div>
  </footer> -->

  <!-- <aside class="control-sidebar control-sidebar-dark">
  </aside> -->
</div>

<?php $this->load->view("template/javascript.php") ?>

</body>
</html>
