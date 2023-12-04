<?php
if (isset($_SESSION['user']) && is_array($_SESSION['user'])) {
    extract($_SESSION['user']);
    $linkimg = 'view/img/' . $img_khach_hang;
}
?>

<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Tài khoản của tôi </h2>
            <ul>
                <li><a href="index.php?act=home">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Tài khoản</li>
            </ul>
        </div>
    </div>
</div>
<div class="my-account-wrapper pb-100 pt-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="myaccount-page-wrapper">
                    <div class="row">

                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $tongtien = 0;
                                foreach ($hoadon as $hd) {
                                    extract($hd);

                                    $linksp = "index.php?act=chitietsanpham&&idsp=$idsp&&iddm=$iddm";
                                ?>

                                    <tr>
                                        <td><a href="<?= $linksp ?>"><?= $ten_san_pham ?></a></td>
                                        <td><?= number_format($don_gia, 0, ',', '.') ?> đ</td>
                                        <td><?= $so_luong ?></td>
                                        <td><?= number_format($thanh_tien, 0, ',', '.')  ?> đ</td>
                                    </tr>
                                <?php
                                    $tongtien += $thanh_tien;
                                }
                                ?>
                                <tr>
                                    <td colspan="2" style="text-align: center;">Tổng tiền:</td>
                                    <td colspan="2" style="text-align: center;"><?= number_format($tongtien, 0, ',', '.') ?> đ</td>
                                </tr>
                            </tbody>
                        </table>
                        <h4>Thông tin người nhận:</h4>
                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>Tên người nhận</th>
                                    <th>Địa chỉ</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>
                                    <th>Trạng thái</th>
                                    <th>Ngày đặt</th>
                                    <th>Nhận hàng</th>
                                    <th>Hủy</th>
                                </tr>
                            </thead>
                            <?php
                            $comfirm = '';
                            if ($trang_thai == 0) {
                                $trangthai = 'Chờ xác nhận';
                            }
                            if ($trang_thai == 1) {
                                $trangthai = 'Đang chuẩn bị';
                            }
                            if ($trang_thai == 2) {
                                $trangthai = 'Đang giao';
                                $comfirm = '
                                            <a onclick="return confirm("đã nhận hàng")" class="btn btn-primary btn-sm" href="index.php?act=comfirm&&id=' . $iddh . '">
                                                Đã nhận hàng
                                            </a>
                                ';
                                $comfirm = '
                                <form action="index.php?act=comfirm" method="post">
                                    <input type="hidden" name="id" value="' . $iddh . '">
                                    <input type="submit" name="nhan" id="" value="Đã nhận hàng">
                                </form>
                                ';
                            ?>

                            <?php
                            }
                            if ($trang_thai == 3) {
                                $trangthai = 'Đã giao';
                            }
                            ?>
                            <tbody>
                                <tr>
                                    <td><?= $ten_kh ?></td>
                                    <td><?= $dia_chi ?></td>
                                    <td><?= $sdt ?></td>
                                    <td><?= $email ?></td>
                                    <td><?= $trangthai ?></td>
                                    <td><?= date("d/m/Y", strtotime($ngay_dat)) ?></td>
                                    <td><?= $comfirm ?></td>
                                    <?php
                                    if ($trang_thai == 0 || $trang_thai == 1) {
                                    ?>
                                        <td><a onclick="return confirm('xác nhận hủy đơn hàng')" href="index.php?act=huydonhang&&iddh=<?= $iddh ?>" class="check-btn sqr-btn ">Hủy</a></td>
                                    <?php
                                    } else {
                                    ?>
                                        <td>Không thể hủy</td>
                                    <?php
                                    }
                                    ?>
                                </tr>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>