<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Giỏ hàng</h2>
            <?php
            // if (isset($_SESSION['giohang']) && ($_SESSION['giohang'])) {
            //     var_dump($_SESSION['giohang']);
            // }
            if (isset($thongbao) && ($thongbao) != "") {
                echo $thongbao;
            }
            ?>

            <ul>
                <li><a href="index.php?act=home">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Giỏ hàng</li>
            </ul>
        </div>
    </div>
    <div class="breadcrumb-img-1">
        <img src="#" alt="">
    </div>
    <div class="breadcrumb-img-2">
        <img src="#" alt="">
    </div>
</div>
<div class="cart-area pt-100 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="#">
                    <div class="cart-table-content">
                        <div class="table-content table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="width-thumbnail"></th>
                                        <th class="width-name">Sản phẩm</th>
                                        <th class="width-price"> Giá</th>
                                        <th class="width-price"> Số lượng</th>
                                        <th class="width-remove">Bỏ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $tonggia = 0;
                                    $i = 1;
                                    if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
                                        foreach ($_SESSION['giohang'] as $item) {
                                            $gia = $item[3] * $item[4];
                                            $linksp = "index.php?act=chitietsanpham&&idsp=" . $item[0] . "&&iddm=" . $item[5];
                                            $linkimg = '../../view/img/' . $item[2];
                                            $link_del_pro_cart = "index.php?act=delprocart&&id=$i";
                                            // }
                                            // for ($i = 0; $i < count($_SESSION['giohang']); $i++) {
                                            //     $linksp = "index.php?act=chitietsanpham&&idsp=" . $_SESSION['giohang'][$i][0] . "&&iddm=" . $_SESSION['giohang'][$i][5];
                                            //     $linkimg = '../../view/img/' . $_SESSION['giohang'][$i][2];
                                            //     $link_del_pro_cart = "index.php?act=delprocart&&id=$i";
                                            //     $gia = $_SESSION['giohang'][$i][3] * $_SESSION['giohang'][$i][4];
                                            //     echo 'hihi' . $gia;
                                    ?>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href="<?= $linksp ?>"><img src="<?= $linkimg ?>" alt=""></a>
                                                </td>
                                                <td class="product-name">
                                                    <h5><a href="<?= $linksp ?>"><?= $item[1] ?></a></h5>
                                                </td>
                                                <td class="product-cart-price"><span class="amount"><?= $gia ?> đ</span></td>
                                                <td class="product-cart-soluong"><span class="amount"><?= $item[4] ?></span></td>
                                                <td class="product-remove"><a onclick="return confirm('xóa sản phẩm khỏi giỏ hàng')" href="<?= $link_del_pro_cart ?>"><i class=" ti-trash "></i></a></td>
                                            </tr>
                                    <?php
                                            $tonggia += $gia;
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="cart-shiping-update-wrapper">
                                <div class="cart-shiping-update btn-hover">
                                    <a href="index.php?act=home">Tiếp tục mua hàng</a>
                                </div>
                                <div class="cart-clear-wrap">
                                    <div class="cart-clear btn-hover">
                                        <a href="index.php?act=delcart">Xóa giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row" style="display: fl;">
            <div class="col-lg-4 col-md-6 col-12" style="width: 33%; float: right;">
                <div class="cart-calculate-discount-wrap mb-40">
                    <h4>Phiếu giảm giá</h4>
                    <div class="select-style mb-15">
                        <form action="#" method="post">
                            <select name="khuyenmai" class="select-two-active">
                                <option value="0">--Phiếu giảm giá--</option>
                                <?php
                                foreach ($khuyenmai as $km) {
                                    extract($km);
                                ?>
                                    <option value="<?= $phan_tram_phuyen_mai ?>"><?= $ma_khuyen_mai ?></option>
                                <?php
                                }
                                ?>
                            </select>
                            <input class="btn theme-color" type="submit" name="giamgia" id="" style="border: 1px solid black; margin-top: 20px;" value="Áp dụng">
                        </form>
                    </div>
                    <div class="select-style mb-15">
                        <h4>Phương thức thanh toán</h4>
                        <select name="khuyenmai" class="select-two-active">
                            <option value="0">--Thanh toán khi nhận hàng--</option>
                            <option value="" disabled>--Thanh online (Đang cập nhật)--</option>
                            <option value="" disabled>--Thanh MOMO (Đang cập nhật)--</option>
                            <option value="" disabled>--Thanh chuyển khoản (Đang cập nhật)--</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- <form action=""> -->
            <div class="col-lg-4 col-md-12 col-12" style="float: right;">
                <h4>Tính giá sản phẩm</h4>
                <div class="select-style mb-15">
                </div><br>
                <div class="select-style mb-15">
                </div>
                <?php
                if (isset($_SESSION['giohang'])) {
                    if (isset($_POST['giamgia']) && ($_POST['giamgia']) > 0) {
                        $khuyenmai = $_POST['khuyenmai'];
                        $conlai = $tonggia - ($tonggia * $khuyenmai / 100);
                ?>
                        <div class="grand-total-wrap">
                            <div class="grand-total-content">
                                <h3 style="">Giá: <span><?= $tonggia ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Khuyến mại: <span><?= $khuyenmai ?> %</span></h3>
                                <h3 style="margin-top: 20px;">Trừ: <span><?= ($tonggia * $khuyenmai / 100) ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Chi tiết:<span> <?= $tonggia ?> - <?= ($tonggia * $khuyenmai / 100) ?> đ</span></h3>
                                <div class="grand-total">
                                    <h4 style="margin-top: 20px;">Còn lại: <span><?= $tonggia - ($tonggia * $khuyenmai / 100) ?> đ</span></h4>
                                </div>
                            </div>

                        </div>
                    <?php
                    } else {
                        $khuyenmai = 0;
                        $conlai = $tonggia;
                    ?>
                        <div class="grand-total-wrap">
                            <div class="grand-total-content">
                                <h3 style="">Giá: <span><?= $tonggia ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Khuyến mại: <span><?= $khuyenmai ?> %</span></h3>
                                <h3 style="margin-top: 20px;">Trừ: <span><?= ($tonggia * $khuyenmai / 100) ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Chi tiết:<span> <?= $tonggia ?> - <?= ($tonggia * $khuyenmai / 100) ?> đ</span></h3>
                                <div class="grand-total">
                                    <h4 style="margin-top: 20px;">Còn lại: <span><?= $tonggia - ($tonggia * $khuyenmai / 100) ?> đ</span></h4>
                                </div>
                            </div>

                        </div>
                <?php
                    }
                }
                ?>
            </div>
            <div class="col-lg-4 col-md-6 col-12" style="float: right;">
                <div class="cart-calculate-discount-wrap mb-40">
                    <h4>Thông tin khách hàng</h4>
                    <?php
                    if (isset($_SESSION['user'])) {
                        extract($_SESSION['user']);
                    ?>
                        <form action="index.php?act=thanhtoan" method="post">
                            <div class="calculate-discount-content">
                                <div class="input-style">
                                    <input name="khuyenmai" type="hidden" value="<?= $khuyenmai ?>">
                                </div>
                                <div class="input-style">
                                    <input name="idkh" type="hidden" value="<?= $id ?>">
                                </div>
                                <div class="input-style">
                                    <input name="tongtien" type="hidden" value="<?= $conlai ?>">
                                </div>
                                <div class="input-style">
                                    <label for="tenkhachhang">Tên khách hàng</label>
                                    <input name="tenkhachhang" type="text" value="<?= $ten_khach_hang ?>">
                                </div>
                                <div class="input-style">
                                    <label for="sdt">Số điện thoại khách hàng</label>
                                    <input name="sdt" type="text" value="<?= $sdt_khach_hang ?>">
                                </div>
                                <div class="input-style">
                                    <label for="email">Email khách hàng</label>
                                    <input name="email" type="email" value="<?= $email_khach_hang ?>">
                                </div>
                                <div class="input-style">
                                    <label for="diachi">Địa chỉ nhận hàng</label>
                                    <input name="diachi" type="text" value="<?= $dia_chi_khach_hang ?>">
                                </div>
                                <div class="calculate-discount-btn btn-hover">
                                    <input onclick="return confirm('đặt hàng')" class="btn theme-color" type="submit" name="dathang" id="" style="border: 1px solid black;" value="Đặt hàng">
                                </div>
                            </div>
                        </form>
                    <?php
                    } else {
                    ?>
                        <div class="calculate-discount-content">
                            <div class="calculate-discount-btn btn-hover">
                                <a class="btn theme-color" href="index.php?act=dangnhap-dangky">Đăng nhập</a>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
$giamoney = 0;
if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
    foreach ($_SESSION['giohang'] as $item) {
        $giaitem = $item[3] * $item[4];
        $giamoney += $giaitem;
    }
}
echo $giamoney;
?>