<?php
if (isset($_SESSION['user']) && is_array($_SESSION['user'])) {
    extract($_SESSION['user']);
    $linkimg = '../../view/img/' . $img_khach_hang;
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
                                    <th>ID</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($hoadon as $hd) {
                                    extract($hd);
                                    $linksp = "index.php?act=chitietsanpham&&idsp=$idsp&&iddm=$iddm";
                                ?>

                                    <tr><td><?= $idsp ?></td>
                                        <td><a href="<?= $linksp ?>"><?= $ten_san_pham ?></a></td>
                                        <td><?= $don_gia ?> đ</td>
                                        <td><?= $so_luong ?></td>
                                        <td><?= $thanh_tien  ?> đ</td>
                                    </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>