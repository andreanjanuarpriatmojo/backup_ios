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
                                Add Perangkat
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="row">
                                    <div class="col-3"></div>
                                    <div class="col-6">
                                        <form action="<?php echo base_url('perangkat/saveTable') ?>" method="post">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Nama Perangkat" name="nama_perangkat">
                                            </div>
                                            <hr>
                                            <div id="form-column">
                                                <b>Atribut</b>
                                                <hr>
                                                <div class="form-group">
                                                    <input class="form-control" type="text" placeholder="Nama Atribut Kolom" name="nama_atribut[]">
                                                </div>
                                                <div class="form-group">
                                                    <select class="form-control" name="tipe_data[]" id="selector">
                                                        <option selected disabled>Select Data Tipe</option>
                                                        <option value="VARCHAR">Varchar</option>
                                                        <option value="DOUBLE">Double</option>
                                                        <option value="DATETIME">Datetime</option>
                                                        <option value="DATE">Date</option>
                                                        <option value="TIME">Time</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <input class="form-control" id="number_field" type="number" placeholder="Panjang Data" name="panjang_data[]" min="1" max="255">
                                                </div>
                                            </div>
                                            <button type="button" id="add-button" class="btn btn-info">Tambah Atribut</button>
                                            <hr>
                                            <button type="submit" class="btn btn-success btn-block">Submit</button>
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

        <script type="text/javascript">
            $(document).ready(function() {

                var wrapper     = $("#form-column");
                var add_button  = $("#add-button");

                var x = 0;

                $(add_button).click(function(e){
                    e.preventDefault();
                    x++;
                    $(wrapper).append('<div><b>Atribut</b><hr><div class="form-group"><input class="form-control" type="text" placeholder="Nama Atribut Kolom" name="nama_atribut[]"></div><div class="form-group"><select class="form-control" name="tipe_data[]"><option selected disabled>Select Data Tipe</option><option value="VARCHAR">Varchar</option><option value="DOUBLE">Double</option><option value="DATETIME">Datetime</option><option value="DATE">Date</option><option value="TIME">Time</option></select></div><div class="form-group"><input class="form-control panjang_data" id="panjang_data" type="number" placeholder="Panjang Data" name="panjang_data[]"></div><div style="cursor:pointer;" class="remove-button btn btn-danger float-right">Remove</div></div>');
                });

                $(wrapper).on("click",".remove-button", function(e){ 
                    e.preventDefault(); $(this).parent('div').remove(); x--;
                })

                $(wrapper).on("change","select", function(){
                    if ($(this).val() == 'DATETIME' || $(this).val() == 'DATE' || $(this).val() == 'TIME') {
                        $(".panjang_data").attr("disabled", "disabled");
                    }
                    else {
                        $(".panjang_data").removeAttr("disabled");
                    }
                }).trigger("change");

                $("select").change(function() {
                    if ($(this).val() == 'DATETIME' || $(this).val() == 'DATE' || $(this).val() == 'TIME') {
                        $("#number_field").attr("disabled", "disabled");
                    }
                    else {
                        $("#number_field").removeAttr("disabled");
                    }
                }).trigger("change");

            });
        </script>

    </body>
</html>