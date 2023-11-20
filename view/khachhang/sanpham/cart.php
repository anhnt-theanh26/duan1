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
                                    if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
                                        for ($i = 0; $i < count($_SESSION['giohang']); $i++) {
                                            $linksp = "index.php?act=chitietsanpham&&idsp=" . $_SESSION['giohang'][$i][0] . "&&iddm=" . $_SESSION['giohang'][$i][5];
                                            $linkimg = '../../view/img/' . $_SESSION['giohang'][$i][2];
                                    ?>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href="<?= $linksp ?>"><img src="<?= $linkimg ?>" alt=""></a>
                                                </td>
                                                <td class="product-name">
                                                    <h5><a href="<?= $linksp ?>"><?= $_SESSION['giohang'][$i][1] ?></a></h5>
                                                </td>
                                                <td class="product-cart-price"><span class="amount"><?= $_SESSION['giohang'][$i][3] ?></span></td>
                                                <td class="product-cart-soluong"><span class="amount"><?= $_SESSION['giohang'][$i][4] ?></span></td>
                                                <td class="product-remove"><a href="#"><i class=" ti-trash "></i></a></td>
                                            </tr>
                                    <?php
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
                    <h4>Calculate shipping </h4>
                    <div class="calculate-discount-content">
                        <div class="select-style mb-15">
                            <select class="select-two-active">
                                <option>Bangladesh</option>
                                <option>Bahrain</option>
                                <option>Azerbaijan</option>
                                <option>Barbados</option>
                                <option>Barbados</option>
                            </select>
                        </div>
                        <div class="select-style mb-15">
                            <select class="select-two-active">
                                <option>State / County</option>
                                <option>Bahrain</option>
                                <option>Azerbaijan</option>
                                <option>Barbados</option>
                                <option>Barbados</option>
                            </select>
                        </div>
                        <div class="input-style">
                            <input type="text" placeholder="Town / City">
                        </div>
                        <div class="input-style">
                            <input type="text" placeholder="Postcode / ZIP">
                        </div>
                        <div class="calculate-discount-btn btn-hover">
                            <a class="btn theme-color" href="#">Update</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="cart-calculate-discount-wrap mb-40">
                    <h4>Coupon Discount </h4>
                    <div class="calculate-discount-content">
                        <p>Enter your coupon code if you have one.</p>
                        <div class="input-style">
                            <input type="text" placeholder="Coupon code">
                        </div>
                        <div class="calculate-discount-btn btn-hover">
                            <a class="btn theme-color" href="#">Apply Coupon</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-12">
                <div class="grand-total-wrap">
                    <div class="grand-total-content">
                        <h3>Subtotal <span>$180.00</span></h3>
                        <div class="grand-shipping">
                            <span>Shipping</span>
                            <ul>
                                <li><input type="radio" name="shipping" value="info" checked="checked"><label>Free shipping</label></li>
                                <li><input type="radio" name="shipping" value="info" checked="checked"><label>Flat rate: <span>$100.00</span></label></li>
                                <li><input type="radio" name="shipping" value="info" checked="checked"><label>Local pickup: <span>$120.00</span></label></li>
                            </ul>
                        </div>
                        <div class="shipping-country">
                            <p>Shipping to Bangladesh</p>
                        </div>
                        <div class="grand-total">
                            <h4>Total <span>$185.00</span></h4>
                        </div>
                    </div>
                    <div class="grand-total-btn btn-hover">
                        <a class="btn theme-color" href="checkout.html">Proceed to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>