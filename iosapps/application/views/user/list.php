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
                <br>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10">
                    <div class="card">
                        <div class="card-header">
                            <a class="btn" href="#">
                                <i class="fas fa-user mr-1"></i>
                                User
                            </a>
                            <div class="card-tools">
                                <a class="btn" href="<?php echo base_url('user/add')?>">
                                    <i class="fas fa-user-plus mr-1"></i>
                                    Add
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="tab-content">
                            <div class="table-responsive">
                                <table id="table-fixed" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Role</th>
                                            <th width="300px" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($temp == null) { ?>
                                            <tr>
                                                <td colspan="3" class="text-center">Data Kosong</td>
                                            </tr>
                                        <?php } else {?>
                                        <?php foreach($temp as $x): ?>
                                        <tr>
                                            <td><?php echo $x->name ?></td>
                                            <td><?php echo $x->role ?></td>
                                            <td class="text-center">
                                                <a class="btn" href="<?php echo base_url('user/edit/'.$x->id)?>">
                                                    <i class="fas fa-user-edit mr-1"></i>
                                                    Edit
                                                </a>
                                                <a class="btn" href="<?php echo base_url('user/delete/'.$x->id)?>">
                                                    <i class="fas fa-user-minus mr-1"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-1"></div>
                </div>
            </div>
        </div>
        <?php $this->load->view("template/javascript.php") ?>
        <script>
        $(function () {
            $("#table-fixed").DataTable();
        });
        </script>
    </body>
</html>