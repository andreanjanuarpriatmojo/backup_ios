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
                                <i class="fas fa-clipboard-list mr-1"></i>
                                Perangkat   
                            </a>
                            <div class="card-tools">
                                <a class="btn" href="<?php echo base_url('perangkat/add')?>">
                                    <i class="fas fa-plus-square mr-1"></i>
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
                                            <th>Perangkat</th>
                                            <th>Number of Items</th>
                                            <th>Checked By</th>
                                            <th width="300px" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Grapari</td>
                                            <td>12</td>
                                            <td>ADMIN</td>
                                            <td class="text-center">
                                                <!-- <a class="btn" href="<?php echo base_url('perangkat/edit')?>">
                                                    <i class="fas fa-pen-square mr-1"></i>
                                                    Edit
                                                </a> -->
                                                <a class="btn" href="#">
                                                    <i class="fas fa-minus-square mr-1"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
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
    </body>
</html>