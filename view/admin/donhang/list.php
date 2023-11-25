<div class="wrapper">



    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Chờ xác nhận</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php?act=home">Home</a></li>
                            <li class="breadcrumb-item active">Chờ xác nhận</li>
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
                    <h3 class="card-title">Chờ xác nhận</h3>

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
                                <th style="width: 15%">
                                    Tên khách hàng
                                </th>
                                <th style="width: 15%">
                                    Số điện thoại
                                </th>
                                <th style="width: 20%">
                                    Địa chỉ
                                </th>
                                <th style="width: 10%">
                                    Email
                                </th>
                                <th style="width: 10%">
                                    Ngày đặt
                                </th>
                                <th style="width: 10%">
                                    Tổng tiền
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($hoadon as $hd) {
                                extract($hd);
                            ?>
                                <tr>
                                    <td>
                                        #
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $id ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $ten_kh ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $sdt ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $dia_chi ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $email ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $ngay_dat ?>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="index.php?act=chitiethoadon&&id=<?= $id ?>" style="color: black;">
                                            <?= $tong_tien ?>
                                        </a>
                                    </td>
                                    <td class="project-actions text-right">
                                        <a onclick="return confirm('xác nhận đơn hàng')" class="btn btn-primary btn-sm" href="index.php?act=xacnhandonhang&&id=<?= $id ?>">
                                            <i class="fas fa-folder">
                                            </i>
                                            Xác nhận
                                        </a>
                                        <!-- <a class="btn btn-info btn-sm" href="index.php?act=suadanhmuc&&id=">
                                            <i class="fas fa-pencil-alt">
                                            </i>
                                            Edit
                                        </a>
                                        <a onclick="return confirm('xóa mềm Chờ xác nhận')" class="btn btn-danger btn-sm" href="index.php?act=xoadanhmuc&&id=">
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