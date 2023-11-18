<div class="wrapper">



    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Đơn hàng</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php?act=home">Home</a></li>
                            <li class="breadcrumb-item active">Đơn hàng</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Đơn hàng</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                            <i class="fas fa-times"></i>
                        </button> -->
                    </div>
                </div>
                <div class="card-body p-0">
                    <table class="table table-striped projects">
                        <thead>
                            <tr>
                                <th style="width: 1%">
                                    #
                                </th>
                                <th style="width: 4%">
                                    id
                                </th>
                                <th style="width: 20%">
                                    Tên sản phẩm
                                </th>
                                <th style="width: 20%">
                                    Tên khách hàng
                                </th>
                                <th style="width: 10%">
                                    Số lượng
                                </th>
                                <th style="width: 10%">
                                    Giá
                                </th>
                                <th style="width: 10%">
                                    Tổng tiền
                                </th>
                                <th style="width: 10%">
                                    Ngày đặt
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($donhang as $dh) {
                                extract($dh);
                            ?>
                            <tr>
                                <td>
                                    #
                                </td>
                                <td>
                                    <?= $id ?>
                                </td>
                                <td>
                                    <?= $tensp ?>
                                </td>
                                <td>
                                    <?= $tenkh ?>
                                </td>
                                <td>
                                    <?= $so_luong ?>
                                </td>
                                <td>
                                    <?= $gia_san_pham ?>
                                </td>
                                <td>
                                    <?= $tong_tien ?>
                                </td>
                                <td>
                                    <?= $ngay_dat ?>
                                </td>
                                <td class="project-actions text-right">
                                    <!-- <a class="btn btn-primary btn-sm" href="#">
                                        <i class="fas fa-folder">
                                        </i>
                                        View
                                    </a>
                                    <a class="btn btn-info btn-sm" href="#">
                                        <i class="fas fa-pencil-alt">
                                        </i>
                                        Edit
                                    </a>
                                    <a class="btn btn-danger btn-sm" href="#">
                                        <i class="fas fa-trash">
                                        </i>
                                        Delete
                                    </a> -->
                                </td>
                            </tr>
                            <?php
                            }
                            ?>
                            
                        </tbody>

                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->