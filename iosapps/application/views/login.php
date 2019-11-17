<!DOCTYPE html>
<html>
<head>
  <?php $this->load->view("template/head.php") ?>
</head>
<body class="hold-transition login-page">

<div class="login-box">
    <div class="login-box-body">
        <div class="card">
            <div class="card-body">
                <form action="<?php echo base_url('auth/login2'); ?>" method="post">
                    <h3 class="text-center"><b>LOGIN</b></h3>
                    <hr>
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="Username" name="name" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" placeholder="Password" name="password" required>
                    </div>
                    <button class="btn btn-primary btn-block" type="submit">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view("template/javascript.php") ?>

</body>
</html>