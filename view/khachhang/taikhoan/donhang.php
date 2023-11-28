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
                                    <td colspan="2" style="text-align: center;">Tổng tiền</td>
                                    <td colspan="2" style="text-align: center;"><?= number_format($tongtien, 0, ',', '.') ?> đ</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>