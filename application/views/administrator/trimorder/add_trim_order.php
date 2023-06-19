<style>
    .form-control-xs {
        height: calc(1em + .375rem + 5px) !important;
        padding: .125rem .25rem !important;
        font-size: .75rem !important;
        line-height: 1.5;
        border-radius: .2rem;
    }

    .btn-xs {
        height: calc(1em + .375rem + 3px) !important;
        padding: .125rem .25rem !important;
        font-size: .75rem !important;
        line-height: 1.5;
        border-radius: .2rem;
    }
</style>


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





    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">



                    <!-- Main content -->
                    <div class="invoice p-3 mb-3">

                        <div class="text-center">
                            <h5> REQUEST MANUAL</h5>
                        </div>
                        <!-- title row -->

                        <!-- info row -->
                        <?= form_open_multipart('Controller_Trimsorder/create_req'); ?>
                        <div class="row invoice-info mt-5">


                            <div class="container">

                                <div class="row">
                                    <div class="col-sm-6">





                                        <div class="form-group row mb-1">
                                            <label for="trim_code" class="col-sm-4 col-form-label">Trim Code</label>
                                            <div class="col-sm-5">
                                                <input type="hidden" class="form-control form-control-sm" id="id_trim" name="id_trim" required autofocus>

                                                <input type="text" class="form-control form-control-sm" id="trim_code" name="trim_code" required autofocus>
                                            </div>
                                        </div>
                                        <div class="form-group row mb-1">
                                            <label for="trim_style" class="col-sm-4 col-form-label">MO</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_mo" name="trim_mo">
                                            </div>
                                        </div>
                                        <div class="form-group row mb-1">
                                            <label for="trim_style" class="col-sm-4 col-form-label">Style</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_style" name="trim_style">
                                            </div>
                                        </div>
                                        <div class="form-group row mb-1">
                                            <label for="destination" class="col-sm-4 col-form-label">Destination</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_destination" name="trim_destination">
                                            </div>
                                        </div>

                                        <div class=" form-group row mb-1">
                                            <label for="style" class="col-sm-4 col-form-label">Status</label>
                                            <div class="col-sm-5">
                                                <select class="form-control form-control-sm select2" name="trim_status" id="trim_status">
                                                    <option selected="selected" value="Request">Request</option>
                                                    <option value="Approve">Approve</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row mb-1">
                                            <label for="req_date" class="col-sm-4 col-form-label">Req Date</label>
                                            <div class="col-sm-5">
                                                <!-- Date -->
                                                <div class="form-group">

                                                    <div class="input-group date input-group-sm" id="reservationdatetime" data-target-input="nearest">
                                                        <input type="text" class="form-control form-control-sm datetimepicker-input" data-target="#reservationdatetime" name="trim_date" id="trim_date" />
                                                        <div class="input-group-append" data-target="#reservationdatetime" data-toggle="datetimepicker">
                                                            <div class="input-group-text"><i class="fa fa-calendar"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.col -->


                                        <!-- <div class="form-group">
                                            <label>Date and time:</label>
                                            <div class="input-group date" id="reservationdatetime" data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input" data-target="#reservationdatetime" />
                                                <div class="input-group-append" data-target="#reservationdatetime" data-toggle="datetimepicker">
                                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                                </div>
                                            </div>
                                        </div> -->

                                        <div class="form-group row">
                                            <label for="style" class="col-sm-4 col-form-label">Remark</label>
                                            <div class="col-sm-8">
                                                <textarea class="form-control" rows="3" name="trim_remark" id="trim_remark" placeholder="Enter remark ..."></textarea>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>



                            <!-- /.row -->


                            <div class="container mt-5">

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 mb-3">
                                            <button class="btn btn-danger delete btn-sm" id="removeRows" type="button">-
                                                Delete</button>
                                            <button class="btn btn-success btn-sm" id="addRows" type="button">+ Add
                                                More</button>
                                        </div>

                                        <br />
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="col-sm-12">
                                                    <table class="table table-bordered table-hover table-sm" style="width:100%" id="invoiceItem">
                                                        <tr class="po-item">
                                                            <th width="2%"><input id="checkAll" class="formcontrol" type="checkbox"></th>
                                                            <th width="8%">Code Item</th>
                                                            <th width="20%">Description</th>
                                                            <th width="15%">Color</th>
                                                            <th width="10%">Size</th>
                                                            <th width="10%">Qty</th>
                                                            <th width="10%">Unit</th>
                                                            <th width="10%">Allowance</th>
                                                            <th width="5%">Consumption</th>
                                                            <th width="10%">Total</th>
                                                            <th width="100%">Remark</th>


                                                        </tr>
                                                        <!-- <tr>
                                                            <td><input class="itemRow" type="checkbox"></td>

                                                            <td>
                                                                <div class="input-group">
                                                                    <input type="hidden" name="id_item[]" id="id_item_1">
                                                                    <input type="text" name="item_code[]" id="item_code_1" class="form-control  form-control-xs" autocomplete="off" onclick="cari_item()">

                                                                </div>
                                                            </td>
                                                            <td>
                                                                <input type="text" class="form-control  form-control-xs" id="item_detail" readonly>


                                                            </td>
                                                            <td>

                                                                <input type="text" name="qty[]" id="qty_1" class="form-control  form-control-xs" autocomplete="off" required>

                                                            </td>
                                                            <td>

                                                                <input type="text" name="qty[]" id="qty_1" class="form-control  form-control-xs" autocomplete="off" required>

                                                            </td>
                                                            <td>

                                                                <input type="text" name="qty[]" id="qty_1" class="form-control  form-control-xs" autocomplete="off" required>

                                                            </td>
                                                            <td>

                                                                <input type="text" name="remark[]" id="remark_1" class="form-control  form-control-xs" autocomplete="off">

                                                            </td>
                                                        </tr> -->
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->



                                </div>
                                <div class="row no-print">
                                    <div class="col-12">

                                        <a href="<?= base_url('Controller_Trimsorder') ?>" class="btn btn-success float-right">Back</a>
                                        <button type="submit" class="btn btn-primary float-right" style="margin-right: 5px;">
                                            <i class="fas fa-download"></i> Save
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Table row -->
                        <div class="row mb-5 mt-5">

                        </div>
                        <!-- /.invoice -->

                        </form>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->


<script text="text/javascript">
    function calculate() {
        var _total = 0
        $('.po-item').each(function() {
            var qty = $(this).find("[name='qty[]']").val()
            var allowance = $(this).find("[name='allowance[]']").val()
            var consumtion = $(this).find("[name='consumtion[]']").val()
            var row_total = 0;
            if (qty > 0 && allowance > 0 && consumtion > 0) {
                row_total = (parseFloat(qty) * parseFloat(consumtion)) + parseFloat(allowance)
            } else {
                row_total = qty;
            }
            $(this).find("[name='total_qty[]']").val(row_total)

        })
    }




    $(document).ready(function() {
        kd_otomatis()
        kd_otomatis_id();
        $(document).on('click', '#checkAll', function() {
            $(".itemRow").prop("checked", this.checked);
        });
        $(document).on('click', '.itemRow', function() {
            if ($('.itemRow:checked').length == $('.itemRow').length) {
                $('#checkAll').prop('checked', true);
            } else {
                $('#checkAll').prop('checked', false);
            }
        });
        var count = $(".itemRow").length;
        $(document).on('click', '#addRows', function() {
            count++;
            var htmlRows = '';
            htmlRows += '<tr class="po-item">';
            htmlRows += '<td> <input class="itemRow" type="checkbox"></td>';


            htmlRows +=
                '<td> <input type="hidden" name="id_item[]" id="id_item1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" readonly> <div class="input-group"> <input type="text" name="item_code1[]" id="item_code1_ok' +
                count +
                '" class="form-control form-control-xs" autocomplete="off" onclick="cari_item_c2()" required> </div></td>';

            htmlRows += '<td>  <input type="text" name="item_source[]" id="item_detail_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" readonly> </td>';

            htmlRows += '<td>  <input type="text" name="color[]" id="color1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off""> </td>';
            htmlRows += '<td>  <input type="text" name="size[]" id="size1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off"> </td>';

            htmlRows += '<td>  <input type="text" name="qty[]" id="qty1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off"> </td>';

            htmlRows += '<td>  <input type="text" name="unit[]" id="unit1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" readonly> </td>';

            htmlRows += '<td>  <input type="text" name="allowance[]" id="allowance1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off"> </td>';

            htmlRows += '<td>  <input type="text" name="consumtion[]" id="consumtion1_ok' + count +
                '" class="form-control form-control-xs" onclick="calculate()" autocomplete="off" > </td>';

            htmlRows += '<td>  <input type="text" name="total_qty[]" id="total_qty1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" onclick="calculate()" > </td>';

            htmlRows += '<td>  <input type="text" name="remark[]" id="remark1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off"> </td>';

            htmlRows += '</tr>';
            $('#invoiceItem').append(htmlRows);
        });
        $(document).on('click', '#removeRows', function() {
            $(".itemRow:checked").each(function() {
                $(this).closest('tr').remove();
            });
            $('#checkAll').prop('checked', false);
            // calculateTotal();
        });

        function kd_otomatis_id() {
            $.ajax({
                url: "<?php echo site_url('Controller_Trimsorder/kode_otomatis_id') ?>/",
                type: "GET",
                dataType: "JSON",
                success: function(data) {

                    $('[name="id_trim"]').val(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('Error get data from ajax');
                }
            });

        }


        function kd_otomatis() {
            $.ajax({
                url: "<?php echo site_url('Controller_Trimsorder/kode_otomatis') ?>/",
                type: "GET",
                dataType: "JSON",
                success: function(data) {

                    $('[name="trim_code"]').val(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('Error get data from ajax');
                }
            });
        }


        $(document).on('click', '.pilih_code_c2', function(e) {
            var a = $(this).attr('data-nama');
            var b = $(this).attr('data-size');
            var c = $(this).attr('data-color');
            var d = $(this).attr('data-source');
            var e = $(this).attr('data-supplier');

            document.getElementById("id_item1_ok" + count).value = $(this).attr('data-id');
            document.getElementById("item_code1_ok" + count).value = $(this).attr('data-kode');
            document.getElementById("unit1_ok" + count).value = $(this).attr('data-source');
            document.getElementById("item_detail_ok" + count).value = a;

            $('#modal_form_item_c2').modal('hide');
        });



        $(document).on('click', '.pilih_code_c1', function(e) {
            var a = $(this).attr('data-nama');
            // var b = $(this).attr('data-size');
            // var c = $(this).attr('data-color');
            // var d = $(this).attr('data-source');
            // var e = $(this).attr('data-supplier');

            document.getElementById("id_item_1").value = $(this).attr('data-id');
            document.getElementById("item_code_1").value = $(this).attr('data-kode');
            document.getElementById("item_detail").value = a;
            // document.getElementById("supplier_name_1").value = $(this).attr('data-supplier');
            // document.getElementById("item_source_1").value = $(this).attr('data-source');

            $('#modal_form_item').modal('hide');
        });







        $("#example1").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

        $("#example2").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false
        }).buttons().container().appendTo('#example2_wrapper .col-md-6:eq(0)');


        $(document).on('click', '.deleteInvoice', function() {
            var id = $(this).attr("id");
            if (confirm("Are you sure you want to remove this?")) {
                $.ajax({
                    url: "action.php",
                    method: "POST",
                    dataType: "json",
                    data: {
                        id: id,
                        action: 'delete_invoice'
                    },
                    success: function(response) {
                        if (response.status == 1) {
                            $('#' + id).closest("tr").remove();
                        }
                    }
                });
            } else {
                return false;
            }
        });
    });


    function cari_item() {
        $('#modal_form_item').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }

    function cari_item_c2() {
        $('#modal_form_item_c2').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }
</script>



<!-- Modal -->
<div class="modal fade" id="modal_form_item" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <div class="table-responsive">
                        <table id="example1" class="table table-hover table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Code</th>
                                    <th>Description</th>
                                    <th>Unit</th>
                                    <th>Supplier</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($item as $sm) : ?>
                                    <tr class="pilih_code_c1" data-id="<?= $sm['id_item'] ?>" data-kode="<?= $sm['item_code'] ?>" data-nama="<?= $sm['item_description'] ?>" data-source="<?= $sm['unit'] ?>" data-supplier="<?= $sm['supplier_name'] ?>">
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $sm['item_code']; ?></td>
                                        <td><?= $sm['item_description']; ?></td>
                                        <td><?= $sm['unit']; ?></td>
                                        <td><?= $sm['supplier_name']; ?></td>
                                    </tr>
                                    <?php $i++; ?>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_form_item_c2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <div class="table-responsive">
                        <table id="example2" class="table table-hover table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Code</th>
                                    <th>Description</th>
                                    <th>Unit</th>
                                    <th>Supplier</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($item as $sm) : ?>
                                    <tr class="pilih_code_c2" data-id="<?= $sm['id_item'] ?>" data-kode="<?= $sm['item_code'] ?>" data-nama="<?= $sm['item_description'] ?>" data-source="<?= $sm['unit'] ?>" data-supplier="<?= $sm['supplier_name'] ?>">
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $sm['item_code']; ?></td>
                                        <td><?= $sm['item_description']; ?></td>
                                        <td><?= $sm['unit']; ?></td>
                                        <td><?= $sm['supplier_name']; ?></td>
                                    </tr>
                                    <?php $i++; ?>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>