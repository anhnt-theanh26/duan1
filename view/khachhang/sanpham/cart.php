<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Giỏ hàng</h2>
            <?php
            // if (isset($_SESSION['giohang']) && ($_SESSION['giohang'])) {
            //     var_dump($_SESSION['giohang']);
            // }
            // if (isset($thongbao) && ($thongbao) != "") {
            //     echo $thongbao;
            // }
            ?>

            <ul>
                <li><a href="index.html">Home</a></li>
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
                                    if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
                                        for ($i = 0; $i < count($_SESSION['giohang']); $i++) {
                                            $linksp = "index.php?act=chitietsanpham&&idsp=" . $_SESSION['giohang'][$i][0] . "&&iddm=" . $_SESSION['giohang'][$i][5];
                                            $linkimg = '../../view/img/' . $_SESSION['giohang'][$i][2];
                                            $gia = $_SESSION['giohang'][$i][3] * $_SESSION['giohang'][$i][4];
                                    ?>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href="<?= $linksp ?>"><img src="<?= $linkimg ?>" alt=""></a>
                                                </td>
                                                <td class="product-name">
                                                    <h5><a href="<?= $linksp ?>"><?= $_SESSION['giohang'][$i][1] ?></a></h5>
                                                </td>
                                                <td class="product-cart-price"><span class="amount"><?= $gia ?></span></td>
                                                <td class="product-cart-soluong"><span class="amount"><?= $_SESSION['giohang'][$i][4] ?></span></td>
                                                <td class="product-remove"><a href="#"><i class=" ti-trash "></i></a></td>
                                            </tr>
                                    <?php
                                            $tonggia += $gia;
                                        }
                                    }


                                    ?>

                                    <!-- <tr>
                                        <td class="product-thumbnail">
                                            <a href="product-details.html"><img src="view/assets/images/cart/cart-2.jpg" alt=""></a>
                                        </td>
                                        <td class="product-name">
                                            <h5><a href="product-details.html">Modern Lounge Chairs</a></h5>
                                        </td>
                                        <td class="product-cart-price"><span class="amount">$120.00</span></td>
                                        <td class="product-remove"><a href="#"><i class=" ti-trash "></i></a></td>
                                    </tr>
                                    <tr>
                                        <td class="product-thumbnail">
                                            <a href="product-details.html"><img src="view/assets/images/cart/cart-3.jpg" alt=""></a>
                                        </td>
                                        <td class="product-name">
                                            <h5><a href="product-details.html">Modern Swivel Chair</a></h5>
                                        </td>
                                        <td class="product-cart-price"><span class="amount">$120.00</span></td>
                                        <td class="product-remove"><a href="#"><i class=" ti-trash "></i></a></td>
                                    </tr> -->
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
                                    <!-- <div class="cart-clear btn-hover">
                                        <button>Update Cart</button>
                                    </div> -->
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
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12">
                <div class="cart-calculate-discount-wrap mb-40">
                    <h4>Thông tin khách hàng</h4>
                    <?php
                    if (isset($_SESSION['user'])) {
                        extract($_SESSION['user']);
                    ?>
                        <div class="calculate-discount-content">
                            <div class="input-style">
                                <label for="">Tên khách hàng</label>
                                <input type="text" value="<?= $ten_khach_hang ?>">
                            </div>
                            <div class="input-style">
                                <label for="">Email khách hàng</label>
                                <input type="text" value="<?= $email_khach_hang ?>">
                            </div>
                            <div class="input-style">
                                <label for="">Số điện thoại khách hàng</label>
                                <input type="text" max="11" min="10" value="<?= $sdt_khach_hang ?>">
                            </div>
                            <div class="input-style">
                                <label for="">Địa chỉ nhận</label>
                                <input type="text" value="<?= $dia_chi_khach_hang ?>">
                            </div>
                            <div class="calculate-discount-btn btn-hover">
                                <!-- <a class="btn theme-color" href="#">Update</a> -->
                            </div>
                        </div>
                    <?php
                    } else {
                    }
                    ?>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="cart-calculate-discount-wrap mb-40">
                    <h4>Phiếu giảm giá</h4>
                    <div class="select-style mb-15">
                        <form action="" method="post">
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
                    <!-- <div class="calculate-discount-content">
                        <div class="input-style">
                        </div>
                        <div class="calculate-discount-btn btn-hover">
                            <a class="btn theme-color" href="#">Apply Coupon</a>
                        </div>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-12">
                <?php
                if (isset($_SESSION['giohang'])) {
                    if (isset($_POST['giamgia']) && ($_POST['giamgia']) > 0) {
                        $khuyenmai = $_POST['khuyenmai'];
                ?>
                        <div class="grand-total-wrap">
                            <div class="grand-total-content">
                                <h3>Giá: <span><?= $tonggia ?> đ</span></h3>
                                <h3>Khuyến mại: <span><?= $khuyenmai ?> %</span></h3>
                                <h3>Trừ: <span><?= ($tonggia * $khuyenmai / 100) ?> đ</span></h3>
                                <div class="grand-total">
                                    <h4>Còn lại: <span><?= $tonggia - ($tonggia * $khuyenmai / 100) ?> đ</span></h4>
                                </div>
                            </div>
                            <div class="grand-total-btn btn-hover">
                                <a class="btn theme-color" href="checkout.html">Proceed to checkout</a>
                            </div>
                        </div>
                    <?php
                        // header("location: ".$_SERVER['HTTP_REFERER']);
                    } else {
                    ?>
                        <div class="grand-total-wrap">
                            <div class="grand-total-content">
                                <h3>Giá: <span><?= $tonggia ?> đ</span></h3>
                                <h3>Khuyến mại: <span> 0 %</span></h3>
                                <h3>Trừ: <span>0 đ</span></h3>
                                <div class="grand-total">
                                    <h4>Còn lại: <span><?= $tonggia ?> đ</span></h4>
                                </div>
                            </div>
                            <div class="grand-total-btn btn-hover">
                                <a class="btn theme-color" href="checkout.html">Proceed to checkout</a>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>