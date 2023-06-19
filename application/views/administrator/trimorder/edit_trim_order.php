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

                        <div class="text-center mb-5">
                            <h5> TIMW MATERIAL ORDER</h5>
                        </div>
                        <!-- title row -->

                        <!-- info row -->
                        <?= form_open_multipart('Controller_Trimsorder/edit_trim'); ?>
                        <div class="row invoice-info">
                            <div class="container">

                                <div class="row">
                                    <div class="col-sm-6">

                                        <div class="form-group row mb-1">
                                            <label for="order_code" class="col-sm-4 col-form-label">Order Code</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="order_no" name="order_no" placeholder="order_no" value="<?= $trimx['order_no'] ?>" autofocus>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-1">
                                            <label for="order_code" class="col-sm-4 col-form-label">Sample Code</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="sample_code" name="sample_code" placeholder="sample_code" value="<?= $trimx['sample_code'] ?>" autofocus>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-1">
                                            <label for="trim_code" class="col-sm-4 col-form-label">Trim Code</label>
                                            <div class="col-sm-5">
                                                <input type="hidden" class="form-control form-control-sm" id="id_trim" name="id_trim" placeholder="trim_code" value="<?= $trimx['id_trim'] ?>" required autofocus>
                                                <input type="text" class="form-control form-control-sm" id="trim_code" name="trim_code" placeholder="trim_code" value="<?= $trimx['trim_code'] ?>" required autofocus>
                                            </div>
                                        </div>
                                        <div class="form-group row mb-1">
                                            <label for="trim_style" class="col-sm-4 col-form-label">MO</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_mo" name="trim_mo" value="<?= $trimx['trim_mo'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row mb-1">
                                            <label for="trim_style" class="col-sm-4 col-form-label">Style</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_style" name="trim_style" placeholder="style" value="<?= $trimx['trim_style'] ?>">
                                            </div>
                                        </div>
                                        <div class=" form-group row mb-1">
                                            <label for="destination" class="col-sm-4 col-form-label">destination</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control form-control-sm" id="trim_destination" name="trim_destination" placeholder="destination" value="<?= $trimx['trim_destination'] ?>">
                                            </div>
                                        </div>

                                        <div class=" form-group row mb-1">
                                            <label for="style" class="col-sm-4 col-form-label">Trim Status</label>
                                            <div class="col-sm-5">
                                                <select class="form-control form-control-sm select2" name="trim_status" id="trim_status">

                                                    <?php if ($trimx['trim_status'] == 'Request') {
                                                        echo '<option selected="selected" value="Request">Request</option>';
                                                        echo '<option value="Aprrove">Aprrove</option>';
                                                    } else {
                                                        echo '<option value="Request">Request</option>';
                                                        echo '<option selected="selected" value="Approve">Approve</option>';
                                                    }
                                                    ?>
                                                </select>

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
                                                        <input type="text" class="form-control form-control-sm datetimepicker-input" data-target="#reservationdatetime" name="trim_date" id="trim_date" value="<?= $trimx['trim_date'] ?>" />
                                                        <div class="input-group-append" data-target="#reservationdatetime" data-toggle="datetimepicker">
                                                            <div class="input-group-text"><i class="fa fa-calendar"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.col -->

                                        <div class="form-group row">
                                            <label for="style" class="col-sm-4 col-form-label">Remark</label>
                                            <div class="col-sm-8">
                                                <textarea class="form-control" rows="3" name="trim_remark" id="trim_remark"><?= $trimx['remark'] ?></textarea>
                                            </div>
                                        </div>



                                        <div class="form-group row">
                                            <div class="col-sm-12">
                                                <label for="">Detil Trim</label>
                                                <table class="table table-striped table-sm" id='example5'>

                                                    <thead>
                                                        <tr class="text-center">
                                                            <th>size \ color</th>
                                                            <?php foreach ($color as $header) { ?>
                                                                <th><?php echo $header->color; ?></th>
                                                            <?php } ?>
                                                            <!-- <th>total</th> -->
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php foreach ($size as $kolom) { ?>
                                                            <tr>
                                                                <th><?php echo $kolom->size; ?></th>
                                                                <?php foreach ($color as $baris) { ?>
                                                                    <td class="text-center">
                                                                        <?php foreach ($rekap_data as $rekap) { ?>
                                                                            <?php foreach ($rekap->jmlh as $cell) { ?>
                                                                                <?php if ($baris->color == $cell->color && $kolom->size == $cell->size) {
                                                                                    echo $cell->jumlah;
                                                                                } ?>
                                                                            <?php } ?>
                                                                        <?php } ?>
                                                                    </td>
                                                                <?php } ?>
                                                            </tr>
                                                        <?php } ?>
                                                        <!-- <th>total</th> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>





                                    </div>
                                </div>

                            </div>
                            <!-- /.row -->

                            <!-- Table row -->
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
                                                    <table class="table table-bordered table-hover table-sm" id="invoiceItem">

                                                        <tr class="po-item">
                                                            <th width="2%"><input id="checkAll" class="formcontrol" type="checkbox"></th>
                                                            <th width="15%">Code Item</th>
                                                            <th width="40%">Description</th>
                                                            <th width="10%">Color</th>
                                                            <th width="10%">Size</th>
                                                            <th width="10%">Qty</th>
                                                            <th width="10%">Unit</th>
                                                            <th width="10%">Allowance</th>
                                                            <th width="10%">Consumption</th>
                                                            <th width="10%">Total</th>
                                                            <th width="100%">Remark</th>
                                                        </tr>
                                                        <?php $bb = 2;
                                                        $i = $bb; ?>
                                                        <?php foreach ($trimdetil as $ft2) : ?>

                                                            <?php

                                                            $id_itm = 'a' . $i;
                                                            $code_itm = 'b' . $i;
                                                            $detil = 'c' . $i;
                                                            $color = 'l' . $i;
                                                            $size = 'm' . $i;
                                                            $allowance = 'n' . $i;
                                                            $consumtion = 'o' . $i;
                                                            $remark = 'p' . $i;
                                                            $total = 'q' . $i;
                                                            $unit = 'r' . $i;

                                                            $qty = 'j' . $i;
                                                            $ax = $ft2['item_description'];
                                                            $bx = $ft2['size'];
                                                            $cx = $ft2['color'];

                                                            $ex = $ft2['supplier_name'];

                                                            $fx = $ax . ' / '  . $ex;

                                                            ?>


                                                            <tr>
                                                                <td><input class="itemRow" type="checkbox"></td>
                                                                <td>
                                                                    <div class="input-group">
                                                                        <input type="hidden" name="id_item[]" id="<?php echo  $id_itm; ?>" value="<?= $ft2['id_item'] ?>">
                                                                        <input type=" text" name="item_code[]" id="<?php echo  $code_itm; ?>" class="form-control   form-control-xs" onclick="cari_item()" autocomplete="off" value="<?= $ft2['item_code'] ?>" required>
                                                                        <div class="input-group-append">
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="form-control  form-control-xs" id="<?php echo  $detil; ?>" value="<?= $fx; ?>" id="item_detail" readonly>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="color[]" id="<?php echo  $color; ?>" class="form-control  form-control-xs" autocomplete="off" value="<?= $ft2['color'] ?>" onclick="cari_color_c1()">

                                                                </td>
                                                                <td>

                                                                    <input type=" text" name="size[]" id="<?php echo  $size; ?>" class="form-control  form-control-xs" autocomplete="off" value="<?= $ft2['size'] ?>">

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="qty[]" id="<?php echo  $qty; ?>" class="form-control  form-control-xs qty" autocomplete="off" value="<?= $ft2['qty'] ?>" required>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="unit[]" id="<?php echo  $unit; ?>" class="form-control  form-control-xs unit" autocomplete="off" value="<?= $ft2['unit'] ?>" readonly required>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="allowance[]" id="<?php echo  $allowance; ?>" class="form-control  form-control-xs allowance" autocomplete="off" value="<?= $ft2['allowance'] ?>" required>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="consumtion[]" id="<?php echo  $consumtion; ?>" class="form-control  form-control-xs consumtion" autocomplete="off" value="<?= $ft2['consumtion'] ?>" required>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="total_qty[]" id="<?php echo  $total; ?>" class="form-control  form-control-xs total_qty" autocomplete="off" value="<?= $ft2['total'] ?>" required>

                                                                </td>
                                                                <td>

                                                                    <input type="text" name="remark[]" id="<?php echo  $remark; ?>" class="form-control  form-control-xs" autocomplete="off" value="<?= $ft2['detail_remark'] ?>">

                                                                </td>
                                                            </tr>

                                                            <label class="text-white"><?php echo $i++; ?></label>
                                                        <?php endforeach; ?>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>


                                <!-- this row will not appear when printing -->
                                <div class="row no-print">
                                    <div class="col-12">

                                        <a href="<?= base_url('Controller_Trimsorder') ?>" class="btn btn-success float-right">Back</a>
                                        <button type="submit" class="btn btn-primary float-right" style="margin-right: 5px;">
                                            <i class="fas fa-download"></i> Edit
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /.invoice -->

                        <!-- Table row -->
                        <div class="row mb-5 mt-5">

                            <input type="hidden" name="cek[]" id="cek" class="form-control  form-control-sm" autocomplete="off" readonly>

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
            }
            $(this).find("[name='total_qty[]']").val(row_total)

        })


    }




    $('#invoiceItem').find('tr').click(function() {
        var aa = ($(this).index() + 1);
        // alert('You clicked row ' + aa);
        var ab = aa;
        document.getElementById("cek").value = aa;

    });




    $(document).ready(function() {
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
                '" class="form-control form-control-xs" autocomplete="off" readonly><input type="text"  name="item_code1[]" id="item_code1_ok' +
                count +
                '" class="form-control form-control-xs" autocomplete="off" onclick="cari_item_c2()" required></td>';

            htmlRows += '<td>  <input type="text" name="item_source[]" id="item_detil_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" readonly> </td>';



            htmlRows += '<td>  <input type="text" name="color[]" id="color1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off" onclick="cari_color_c2()"> </td>';
            htmlRows += '<td>  <input type="text" name="size[]" id="size1_ok' + count +
                '" class="form-control form-control-xs" autocomplete="off"> </td>';
            htmlRows += '<td>  <input type="text" name="qty[]" id="qty1_ok' + count +
                '" class="form-control form-control-xs qty" autocomplete="off"> </td>';

            htmlRows += '<td>  <input type="text" name="unit[]" id="unit1_ok' + count +
                '" class="form-control form-control-xs unit" autocomplete="off" readonly> </td>';

            htmlRows += '<td>  <input type="text" name="allowance[]" id="allowance1_ok' + count +
                '" class="form-control form-control-xs allowance" autocomplete="off"> </td>';
            htmlRows += '<td>  <input type="text" name="consumtion[]" id="consumtion1_ok' + count +
                '" class="form-control form-control-xs consumtion" autocomplete="off" value="1"> </td>';
            htmlRows += '<td>  <input type="text" name="total_qty[]" id="total_qty1_ok' + count +
                '" class="form-control form-control-xs total_qty" autocomplete="off" > </td>';
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



        // $(document).ready(function() {
        //     $("#consumtion1_ok" + count, "#allowance1_ok" + count).keyup(function() {
        //         console.log('ini klik consumtion + allowance')
        //         calculate();
        //     });
        // });









        $(document).on('click', '.pilih_code_c2', function(e) {
            var a = $(this).attr('data-nama');
            // var b = $(this).attr('data-size');
            // var c = $(this).attr('data-color');
            // var d = $(this).attr('data-source');
            var e = $(this).attr('data-supplier');

            document.getElementById("id_item1_ok" + count).value = $(this).attr('data-id');
            document.getElementById("item_code1_ok" + count).value = $(this).attr('data-kode');
            document.getElementById("item_detil_ok" + count).value = a + " / " + e;
            document.getElementById("unit1_ok" + count).value = $(this).attr('data-unit');

            $('#modal_form_item_c2').modal('hide');
        });



        $(document).on('click', '.pilih_color_c2', function(e) {
            var a = $(this).attr('data-color');
            var d = $(this).attr('data-size');
            var e = $(this).attr('data-qty');

            document.getElementById("color1_ok" + count).value = $(this).attr('data-color');
            document.getElementById("size1_ok" + count).value = $(this).attr('data-size');
            document.getElementById("qty1_ok" + count).value = $(this).attr('data-qty');

            $('#modal_form_detil_c2').modal('hide');
        });







        $(document).on('click', '.pilih_color_c1', function(e) {

            var aax = $("#cek").val();
            var color = 'l';
            var size = 'm';
            var qty = 'j';

            var color_oks = color + aax;
            var size_oks = size + aax;
            var qty_oks = qty + aax;

            document.getElementById(color_oks).value = $(this).attr('data-color');
            document.getElementById(size_oks).value = $(this).attr('data-size');
            document.getElementById(qty_oks).value = $(this).attr('data-qty');


            $('#modal_form_detil_c1').modal('hide');
        });


        $(document).on('click', '.pilih_code_c1', function(e) {

            var aax = $("#cek").val();
            var id_item = 'a';
            var item_code = 'b';
            var item_detil = 'c';

            var id_item_oks = id_item + aax;
            var item_code_oks = item_code + aax;
            var item_detil_oks = item_detil + aax;

            var a = $(this).attr('data-nama');
            var e = $(this).attr('data-supplier');
            var f = a + " / " + e;


            document.getElementById(id_item_oks).value = $(this).attr('data-id');
            document.getElementById(item_code_oks).value = $(this).attr('data-kode');
            document.getElementById(item_detil_oks).value = f;


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
        $("#example3").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false
        }).buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');
        $("#example6").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false
        }).buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');


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
        console.log('ini pilih1');
        $('#modal_form_item').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }


    function cari_item_c2() {

        $('#modal_form_item_c2').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search dataxx'); // Set Title to Bootstrap modal title
    }

    function cari_size() {
        $('#modal_form_size').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }



    function cari_size_c2() {
        $('#modal_form_size_c2').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }



    function cari_color_c1() {

        $('#modal_form_detil_c1').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }



    function cari_color_c2() {
        $('#modal_form_detil_c2').modal('show'); // show bootstrap modal
        $('.modal-title').text('Search data'); // Set Title to Bootstrap modal title
    }



    function calc() {
        $('#invoiceItem tbody tr').each(function(i, element) {
            var html = $(this).html();
            if (html != '') {
                var qty = $(this).find('.qty').val();
                var allowance = $(this).find('.allowance').val();
                var consumtion = $(this).find('.consumtion').val();
                // $(this).find('.total_qty').val(qty * consumtion) + allowance;


                var row_total = 0;
                if (qty > 0 && allowance > 0 && consumtion > 0) {
                    row_total = (parseFloat(qty) * parseFloat(consumtion)) + parseFloat(allowance)
                }
                $(this).find(".total_qty").val(row_total)


            }
        });
    }


    $('#invoiceItem tbody').on('keyup change', function() {
        calc();
    });
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
                                    <th>Section</th>
                                    <th>Supplier</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($item as $sm) : ?>
                                    <tr class="pilih_code_c1" data-id="<?= $sm['id_item'] ?>" data-kode="<?= $sm['item_code'] ?>" data-nama="<?= $sm['item_description'] ?>" data-source="<?= $sm['remark'] ?>" data-supplier="<?= $sm['supplier_name'] ?>">
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $sm['item_code']; ?></td>
                                        <td><?= $sm['item_description']; ?></td>
                                        <td><?= $sm['remark']; ?></td>
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
                                    <tr class="pilih_code_c2" data-id="<?= $sm['id_item'] ?>" data-kode="<?= $sm['item_code'] ?>" data-nama="<?= $sm['item_description'] ?>" data-source="<?= $sm['remark'] ?>" data-unit="<?= $sm['unit'] ?>" data-supplier="<?= $sm['supplier_name'] ?>">
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
<div class="modal fade" id="modal_form_detil_c1" tabindex="-1" role="dialog" aria-hidden="true">
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
                        <table id="example3" class="table table-hover table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>qty</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($cbddetil as $sm) : ?>
                                    <tr class="pilih_color_c1" data-color="<?= $sm['color'] ?>" data-size="<?= $sm['size'] ?>" data-qty="<?= $sm['qty'] ?>">
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $sm['color']; ?></td>
                                        <td><?= $sm['size']; ?></td>
                                        <td><?= $sm['qty']; ?></td>
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
<div class="modal fade" id="modal_form_detil_c2" tabindex="-1" role="dialog" aria-hidden="true">
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
                        <table id="example6" class="table table-hover table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>qty</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($cbddetil as $sm) : ?>
                                    <tr class="pilih_color_c2" data-color="<?= $sm['color'] ?>" data-size="<?= $sm['size'] ?>" data-qty="<?= $sm['qty'] ?>">
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $sm['color']; ?></td>
                                        <td><?= $sm['size']; ?></td>
                                        <td><?= $sm['qty']; ?></td>
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