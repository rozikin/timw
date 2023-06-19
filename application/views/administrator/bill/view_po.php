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

    .totals {
        padding: 10px !important;



    }



    .table-up,
    th,
    td {
        border: 1px solid grey;
        padding: 5px;

    }



    h1 {
        font-size: 5em;
        font-weight: 800;
    }

    .td-high {
        border: 1px solid grey;

        padding-bottom: 120px;
        padding-right: 50px;
    }

    .po-item {
        background-color: #E0E0E0;
    }

    .table-up .th {
        text-align: center;
    }

    .timw {
        margin-left: 80px !important;
        margin-top: 20px !important;
    }

    .ttd1 {
        margin-left: 30px !important;
        margin-bottom: 100px !important;
        margin-top: 20px !important;

    }

    /* th,
    td {
        border-bottom: 1px solid #ddd;
    } */

    .ttd1-isi {

        margin-bottom: 100px !important;

    }

    .ttd2 {
        margin-left: 200px !important;
        margin-bottom: 100px !important;
        margin-top: 20px !important;

    }

    .ttd2-isi {

        margin-bottom: 100px !important;

    }

    .full-height {
        height: 100%;
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


    <section class="content" id="out_print">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <!-- Main content -->
                    <div class="invoice p-3 mb-3">
                        <div class="row invoice-info">
                            <div class="col-sm-6 invoice-col">

                                <div class="timw">
                                    <h1>
                                        <em>
                                            'TIMW'
                                        </em>
                                    </h1>
                                </div>
                            </div>

                            <div class="col-sm-6 invoice-col">
                                <div class="font-weight-bold">
                                    PT TI Matsuoka Winner Industry
                                </div>
                                <div class="font-weight-normal">
                                    Head Office :
                                </div>
                                <div class="font-weight-normal">
                                    Summitmas II 3rd Fl. Jl. Jend. Sudirman kav 61-62 Jakarta 12190
                                </div>
                                <div class="font-weight-normal">
                                    Tel. (021) 520 1756 - Fax. (021) 520 1294
                                </div>
                                <div class="font-weight-normal">
                                    Factory :
                                </div>
                                <div class="font-weight-normal">
                                    Jl. Raya Tegalpanas Jimbaran Ds. Secang Rt. 01 Dsn. Samban
                                    Kec. Bawen Kab. Semarang Jawa Tengah
                                </div>

                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <hr style="width:100%;text-align:left;margin-left:0" class="border border-dark">
                            </div>
                        </div>


                        <div class="text-center">
                            <h4 class="font-weight-bold">PURCHASE ORDER</h4>
                            <h6 class="font-weight-bold">NO : <?= $po['po_no']; ?></h6>
                        </div>
                        <!-- title row -->

                        <!-- info row -->
                        <?= form_open_multipart('Controller_Purchase/create'); ?>
                        <div class="row invoice-info mt-1">


                            <div class="container">
                                <input type="hidden" value="<?= $po['remark'] ?>" id="po_remark">

                                <div class="row">
                                    <div class="col-sm-4">
                                        <p class="m-0">MESSRS,</p>
                                        <p class="m-0 font-weight-bold"><?= $po['supplier_name'] ?></p>
                                        <p class="m-0"><?= $po['supplier_address'] ?></p>


                                        <p class="m-0">Phone &nbsp : <?= $po['supplier_phone'] ?></p>
                                        <p class="m-0">Fax &nbsp &nbsp &nbsp &nbsp : <?= $po['supplier_phone'] ?>
                                        </p>
                                        <p class="m-0">Attn &nbsp &nbsp &nbsp : <?= $po['supplier_attention'] ?>
                                        </p>
                                        <p class="m-0">email &nbsp &nbsp : <?= $po['supplier_email'] ?></p>
                                    </div>
                                    <div class="col-sm-6">

                                    </div>
                                    <div class="col-sm-2">
                                        <p class="m-0 text-center">Date &nbsp : &nbsp <?= $po['request_date'] ?></p>
                                    </div>
                                </div>
                            </div>


                            <!-- /.row -->

                            <div class="container mt-5">

                                <div class="row">
                                    <div class="col-sm-12">

                                        <div class="col-12">

                                            <div class="row">
                                                <div class="col-2">Request in house</div>
                                                <div class="col-1">:</div>
                                                <div class="col-7">
                                                    <p class="m-0"><?= $po['request_in_house'] ?></p>
                                                </div>


                                            </div>
                                        </div>

                                        <div class="col-12 mb-2">

                                            <div class="row">
                                                <div class="col-2">Your Quotation No</div>
                                                <div class="col-1">:</div>
                                                <div class="col-5">
                                                    <p class="m-0"></p>
                                                </div>
                                                <div class="col-3">
                                                    <p class="m-0">Dated:</p>
                                                </div>
                                            </div>
                                            <div class="row ">
                                                <div class="col-2">Delivery Point at</div>
                                                <div class="col-1">:</div>
                                                <div class="col-7">
                                                    <p class="m-0"><?= $po['delivery_at'] ?></p>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-12">
                                                <div class="col-sm-12">

                                                    <table class="table-up" id="invoiceItem">
                                                        <thead>
                                                            <tr class="po-item">
                                                                <th class="text-center" width="2%">No</th>
                                                                <th class="text-center" width="40%">Description of Goods</th>
                                                                <th class="text-center" width="5%">Unit</th>
                                                                <th class="text-center" width="15%">Qty Order</th>
                                                                <th class="text-center" width="15%">Unit Price</th>
                                                                <th class="text-center">Total Price</th>
                                                            </tr>

                                                        </thead>

                                                        <tbody>


                                                            <?php $i = 1;



                                                            ?>
                                                            <?php foreach ($podetil as $p) : ?>


                                                                <tr>

                                                                    <td>
                                                                        <?= $i; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $p['item_code'] ?> -
                                                                        <?= $p['item_description'] ?> -

                                                                        <?= $p['size'] ?> -

                                                                        <?= $p['color'] ?>
                                                                    </td>


                                                                    <td class="text-center">
                                                                        <?= $p['unit'] ?>
                                                                    </td>


                                                                    <td class="text-center">
                                                                        <?= number_format($p['qty'], 0, ',', '.') ?>
                                                                    </td>



                                                                    <td class="text-center">
                                                                        <div>
                                                                            <?php if ($po['remark'] === 'Local') {
                                                                                echo 'Rp.     ';
                                                                            } else {

                                                                                echo 'USD.     ';
                                                                            }
                                                                            ?>
                                                                            <?= number_format($p['price'], 0, ',', '.') ?>

                                                                        </div>



                                                                        <div>
                                                                            Allocation : <?= $po['allocation'];  ?>
                                                                        </div>
                                                                    </td>

                                                                    <td class="text-right">


                                                                        <?php if ($po['remark'] === 'Local') {
                                                                            echo 'Rp.     ';
                                                                        } else {

                                                                            echo 'USD.     ';
                                                                        }
                                                                        ?>
                                                                        <?= number_format($p['total_price'], 0, ',', '.') ?>


                                                                    </td>

                                                                </tr>


                                                                <?php $i++; ?>
                                                            <?php endforeach; ?>

                                                        </tbody>

                                                        <tfoot>
                                                            <tr>
                                                                <th class="p-1 text-left" colspan="7">Note : <?= $po['note1'] ?>
                                                                </th>
                                                            </tr>
                                                            <tr class="bg-lightblue">
                                                            <tr>
                                                                <th class="p-1 text-right" colspan="5">Sub Total</th>
                                                                <th class="p-1 text-right" id="sub_total">

                                                                    <?php if ($po['remark'] === 'Local') {
                                                                        echo 'Rp.     ';
                                                                    } else {

                                                                        echo 'USD.     ';
                                                                    }
                                                                    ?>


                                                                    <?= number_format($po['sub_total'], 0, ',', '.') ?>
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-1 text-right" colspan="5">Rounding
                                                                </th>
                                                                <th class="p-1 text-right">

                                                                    <?php if ($po['remark'] === 'Local') {
                                                                        echo 'Rp.     ';
                                                                    } else {

                                                                        echo 'USD.     ';
                                                                    }
                                                                    ?>


                                                                    <?= $po['rounding'] ?>
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-1 text-right" colspan="5"> Vat (<?= $po['vat']; ?>%)</th>
                                                                <th class="p-1 text-right">
                                                                    <?php if ($po['remark'] === 'Local') {
                                                                        echo 'Rp.     ';
                                                                    } else {

                                                                        echo 'USD.     ';
                                                                    }
                                                                    ?>




                                                                    <?= number_format($po['vat_amount'], 0, ',', '.') ?>
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-1 text-right" colspan="5">Grand Total</th>
                                                                <th class="p-1 text-right" id="total">

                                                                    <?php if ($po['remark'] === 'Local') {
                                                                        echo 'Rp.     ';
                                                                    } else {

                                                                        echo 'USD.     ';
                                                                    }
                                                                    ?>



                                                                    <?= number_format($po['grand_total'], 0, ',', '.') ?>
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-1 text-right" colspan="5">Purchase Amount</th>
                                                                <th class="p-1 text-right" id="total">
                                                                    <?php if ($po['remark'] === 'Local') {
                                                                        echo 'Rp.     ';
                                                                    } else {

                                                                        echo 'USD.     ';
                                                                    }
                                                                    ?>

                                                                    <?= number_format($po['purchase_amount'], 0, ',', '.') ?>

                                                                </th>


                                                            </tr>
                                                            </tr>
                                                        </tfoot>
                                                    </table>

                                                    <!-- <input type="text" name="cek[]" id="cek" class="form-control  form-control-sm" autocomplete="off" readonly> -->


                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <!-- /.row -->


                                </div>
                                <div class="row mb-1">
                                    <!-- accepted payments column -->
                                    <div class="col-5 mt-5">

                                        <div class="form-group">
                                            <label class="font-weight-bold">Note</label>
                                            </br>
                                            <p>
                                                - Payment term is T/T 30 days after delivery
                                                </br>
                                                - Please send back after dully signed and stamped
                                                </br>
                                                - Goods to be delivered to the following address
                                                </br>
                                                <label class="font-weight-bold"> PT. TI MATSUOKA WINNER INDUSTRY</label>
                                                </br>
                                                Jl. Raya Tegalpanas Jimbaran
                                                Ds. Secang RT. 01 Dsn. Samban
                                                Kec. Bawen Kab. Semarang, Jawa Tengah
                                                </br>

                                            <p><?= $po['note2'] ?></p>
                                            </br>
                                        </div>
                                    </div>

                                    <div class="col-2 mt-5">

                                    </div>
                                    <!-- /.col -->
                                    <div class="col-5">

                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->



                                <div class="row invoice-info mt-2" id="paraf1">
                                    <div class="col-sm-6 invoice-col">

                                        <div class="ttd1">
                                            <div class="font-weight-normal">
                                                Issued by,
                                            </div>
                                            <div class="font-weight-normal ttd1-isi">
                                                PT. TI Matsuoka Winner Industry
                                            </div>


                                            <div class="font-weight-normal mt-5 ml-5">
                                                Mr. Tadashi Miyamoto
                                            </div>
                                            <hr style="width:50%;text-align:left;margin-left:0" class="border border-dark">
                                            <div class="ml-5">President Director</div>

                                        </div>
                                    </div>



                                    <div class="col-sm-6 invoice-col">

                                        <div class="ttd2">
                                            <div class="font-weight-normal">
                                                Confirmed by,
                                            </div>
                                            <div class="font-weight-normal ttd2-isi">
                                                <?= $po['supplier_name'] ?>
                                            </div>

                                            <div class="font-weight-normal mt-5 ml-5">
                                                <div class="text-white">0</div>
                                            </div>

                                            <hr style="width:50%;text-align:left;margin-left:0" class="border border-dark">
                                            <div class="font-weight-normal ml-5">
                                                <?= $po['supplier_attention'] ?>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                                <div class="row invoice-info mt-5" id="paraf2">
                                    <div class="col-sm-2">


                                    </div>

                                    <div class="col-sm-10">

                                        <div class="ttd2">
                                            <table>
                                                <tr>
                                                    <th style="width:22%" class="text-center">President Director</th>
                                                    <th style="width:20%" class="text-center">Director</th>
                                                    <th style="width:20%" class="text-center">Manager</th>
                                                    <th style="width:22%" class="text-center">Head of Division</th>
                                                    <th style="width:25%" class="text-center">In Charge</th>
                                                </tr>

                                                <tr>
                                                    <td class="td-high"></td>
                                                    <td class="td-high"></td>
                                                    <td class="td-high"></td>
                                                    <td class="td-high"></td>
                                                    <td class="td-high"></td>
                                                </tr>

                                            </table>

                                        </div>

                                    </div>
                                </div>



                                <div class="row no-print mt-5">
                                    <div class="col-12">

                                        <a onclick="history.back(-1)" class="btn btn-success float-right">Back</a>

                                        <button class="btn btn-sm btn-flat btn-primary" onclick="window.print()" type="button"><i class="fa fa-print"></i> Print</button>
                                        <!-- <a href="<?= base_url('Controller_Purchase/print_pdf/') . $po['id_po'] ?>"
                                            class="btn btn-primary float-right" style="margin-right: 5px;">Print</a> -->
                                    </div>
                                </div>


                            </div>
                        </div>

                        </form>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->


<script>
    $('#invoiceItem').find('tr').click(function() {
        var aa = ($(this).index() + 1);
        // alert('You clicked row ' + aa);
        var ab = aa;
        document.getElementById("cek").value = aa;
    });


    $(document).ready(function() {

        var a = $("#po_remark").val();
        var aax = $("#cek").val();
        var id_item = 'a';
        var id_item_oks = id_item + aax;

        if (a == 'Local') {
            $("#paraf2").show();
            $("#paraf1").hide();
        } else {
            $("#paraf1").show();
            $("#paraf2").hide();
        }
    });



    $(function() {
        $('#print').click(function(e) {
            e.preventDefault();
            var _h = $('head').clone()
            var _p = $('#out_print').clone()
            var _el = $('<div>')
            _el.append(_h)
            _el.append(_p)
            var nw = window.open("", "", "width=1200,height=950")
            nw.document.write(_el.html())
            nw.document.close()
            setTimeout(() => {
                nw.print()
                setTimeout(() => {

                    nw.close()
                }, 300);
            }, 200);
        })
    })
</script>