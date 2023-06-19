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

    .table-up,
    .thx {
        border: 1px solid grey;
        padding: 5px;
        text-align: center;
        font-size: .95rem !important;
        border-collapse: collapse;

    }


    .table-up,
    .tds {
        border: 1px solid grey;
        padding: 5px;
        text-align: left;
        font-size: .75rem !important;

    }

    .thc {

        border: 1px solid grey;
        padding: 5px;
        text-align: center;
        font-size: .70rem !important;
        border-collapse: collapse;

    }

    .tdc {
        border: 1px solid grey;
        padding: 5px;
        text-align: center;
        font-size: .70rem !important;
        border-collapse: collapse;

    }

    .thz {

        padding-right: 10px;

    }



    h1 {
        font-size: 5em;
        font-weight: 800;
    }

    /* .teble-up,
    .td-high {
        border: 1px solid black;

        padding-bottom: 120px;
        padding-right: 50px;
    } */

    /* .table-up .th {
        text-align: center;
    } */

    .timw {
        margin-left: 80px !important;
        margin-top: 20px !important;
    }

    .ttd1 {
        margin-left: 30px !important;
        margin-bottom: 100px !important;
        margin-top: 20px !important;

    }

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
                            <h4 class="font-weight-bold">TRIM ORDER</h4>
                            <h6 class="font-weight-bold">NO : <?= $trimx['trim_code']; ?></h6>
                        </div>
                        <!-- title row -->

                        <!-- info row -->
                        <?= form_open_multipart(); ?>
                        <div class="row invoice-info mt-1">


                            <div class="container mt-5">


                                <div class="row">
                                    <div class="col-sm-4">

                                        <table class='borderless'>
                                            <tr>
                                                <th class="thz" width="10%">Style</th>
                                                <td> :</td>
                                                <td> <?= $trimx['trim_style'] ?></td>
                                            </tr>
                                            <tr>
                                                <th class="thz" width="10%">MO</th>
                                                <td> :</td>
                                                <td> <?= $trimx['trim_mo'] ?></td>
                                            </tr>
                                            <tr>
                                                <th class="thz" width="10%">Destination</th>
                                                <td> :</td>
                                                <td> <?= $trimx['trim_destination'] ?></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-sm-4">

                                    </div>
                                    <div class="col-sm-4">
                                        <table class='borderless'>
                                            <tr>
                                                <th class="thz" width="10%">Date</th>
                                                <td> :</td>
                                                <td> <?= $trimx['trim_date'] ?></td>
                                            </tr>
                                            <tr>
                                                <th class="thz" width="10%">Remark</th>
                                                <td> :</td>
                                                <td> <?= $trimx['remark'] ?></td>
                                            </tr>

                                        </table>

                                    </div>

                                </div>
                            </div>


                            <!-- /.row -->

                            <div class="container mt-5 mb-5">


                                <div class="form-group row col-4">
                                    <div class="col-sm-12">
                                        <!-- <label for="">Detil Trim</label> -->
                                        <table class="table-detil">

                                            <thead>
                                                <tr class="text-center">
                                                    <th class="thc">S \ C</th>
                                                    <?php foreach ($color as $header) { ?>
                                                        <th class="thc"><?php echo $header->color; ?></th>
                                                    <?php } ?>
                                                    <!-- <th>total</th> -->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($size as $kolom) { ?>
                                                    <tr>
                                                        <th class="thc"><?php echo $kolom->size; ?></th>
                                                        <?php foreach ($color as $baris) { ?>
                                                            <td class="text-center tdc">
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


                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="col-sm-12">
                                                    <table class="table-up">
                                                        <tr class="po-item">
                                                            <th class="thx" width="2%">No</th>
                                                            <th class="thx" width="5%">Code Item</th>
                                                            <th class="thx" width="10%">Description</th>
                                                            <th class="thx" width="2%">Size</th>
                                                            <th class="thx" width="10%">Color</th>
                                                            <th class="thx" width="10%">Supplier</th>
                                                            <th class="thx" width="5%">Qty</th>
                                                            <th class="thx" width="5%">Unit</th>
                                                            <th class="thx" width="5%">Remark</th>

                                                        </tr>
                                                        <tbody>
                                                            <?php $i = 1; ?>
                                                            <?php foreach ($trimdetil as $p) : ?>
                                                                <tr class="po-item tds">

                                                                    <td class="tds text-center">
                                                                        <?= $i; ?>
                                                                    </td>
                                                                    <td class="tds">
                                                                        <?= $p['item_code'] ?>
                                                                    </td>
                                                                    <td class="tds">
                                                                        <?= $p['item_description'] ?>
                                                                    </td>
                                                                    <td class="text-center tds">
                                                                        <?= $p['size'] ?>
                                                                    </td>
                                                                    <td class="tds">
                                                                        <?= $p['color'] ?>
                                                                    </td>

                                                                    <td class="tds">
                                                                        <?= $p['supplier_name'] ?>
                                                                    </td>
                                                                    <td class="text-center tds">
                                                                        <?= number_format($p['qty'], 0, ',', '.') ?>
                                                                    </td>
                                                                    <td class="tds text-center">
                                                                        <?= $p['unit'] ?>
                                                                    </td>
                                                                    <td class="tds">
                                                                        <?= $p['detail_remark'] ?>
                                                                    </td>


                                                                </tr>

                                                                <?php $i++; ?>
                                                            <?php endforeach; ?>
                                                        </tbody>
                                                    </table>


                                                </div>
                                            </div>
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
    $(document).ready(function() {

        var a = $("#po_remark").val();
        if (a == 'Local') {
            $("#paraf2").hide();
            $("#paraf1").show();
        } else {
            $("#paraf1").hide();
            $("#paraf2").show();
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