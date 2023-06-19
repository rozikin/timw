<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1><?= $title; ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active"><?= $title; ?></li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <?php if (validation_errors()) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?= validation_errors(); ?></div>
                    <?php endif; ?>
                    <div id="flash_data">
                        <?= $this->session->flashdata('message'); ?>
                    </div>

                    <div class="card">

                        <!-- /.card-header -->
                        <div class="card-body">

                            <table id="example1" class="table table-hover table-bordered table-sm" style="width:100%">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Order No</th>
                                        <th scope="col">Sample code</th>
                                        <th scope="col">trim code</th>
                                        <th scope="col">MO</th>
                                        <th scope="col">Style</th>
                                        <th scope="col">Destination</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Item Code</th>
                                        <th scope="col">Desc</th>
                                        <th scope="col">Color</th>
                                        <th scope="col">Size</th>
                                        <th scope="col">Qty</th>
                                        <th scope="col">Req by</th>
                                    </tr>
                                </thead>

                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->






<script type="text/javascript">
    var save_method; //for save method string
    var table;
    var base_url = '<?php echo base_url(); ?>';

    $(document).ready(function() {
        //call function show all product

        table = $('#example1').DataTable({
            "responsive": true,
            "autoWidth": false,

            "dom": 'Bfrtip',
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],

            "ajax": {
                url: '<?php echo site_url('Controller_Trimsorder/get_data_report') ?>',
                type: 'POST'
            },

        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    });




    function view_data(id) {
        var a = "<?php echo site_url('Controller_Trimsorder/view_trim') ?>/" + id;
        window.location.assign(a);
    }


    function reload_table() {
        table.ajax.reload(null, false); //reload datatable ajax 

    }
</script>



<div class="modal fade" id="modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Order Detail</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table id="example2" class="table table-bordered table-hover table-sm">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>item code</th>
                            <th>item description</th>
                            <th>Supplier</th>
                            <th>size</th>
                            <th>color</th>
                            <th>qty</th>
                            <th>remark</th>

                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->