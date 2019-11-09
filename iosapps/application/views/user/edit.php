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
                                    <i class="fas fa-user-edit mr-1"></i>
                                    Edit User : <?php echo $temp->name ?>
                                </a>
                            <div class="card-tools">
                                <a class="btn" href="<?php echo base_url('user')?>">
                                    <i class="fas fa-chevron-left mr-1"></i>
                                    Back
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="row">
                                    <div class="col-3"></div>
                                    <div class="col-6">
                                        <form action="<?php echo base_url('user/update/'.$temp->id) ?>" method="post">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Username" name="name" value="<?php echo $temp->name ?>">
                                            </div>
                                            <div class="form-group">
                                                <input class="form-control" type="password" placeholder="Password" name="password">
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" name="role" value="<?php echo $temp->role ?>">
                                                    <option disabled>Select User Role</option>
                                                    <option value="ADMIN">ADMIN</option>
                                                    <option value="ADMIN">ADMIN</option>
                                                    <option value="ADMIN">ADMIN</option>
                                                    <option value="ADMIN">ADMIN</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-info btn-block">Submit</button>
                                        </form>
                                    </div>
                                    <div class="col-3"></div>
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