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
    <div class="container" id="order">
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
                                    // $i = 0;
                                    if (!empty($dataDB)) {
                                        foreach ($dataDB as $key => $prd) {
                                            $linksp = "index.php?act=chitietsanpham&&idsp=".$prd['id']."&&iddm=".$prd['iddm'];
                                            $linkimg = 'view/img/' . $prd['img_dai_dien'];
                                            $quantityInCart = 0;
                                            foreach ($_SESSION['giohang'] as $item) {
                                                if ($item['id'] == $prd['id']) {
                                                    $quantityInCart = $item['quantity'];
                                                    break;
                                                }
                                            }
                                    ?>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href="<?= $linksp ?>"><img src="<?= $linkimg ?>" alt="<?= $prd['ten_san_pham'] ?>"></a>
                                                </td>
                                                <td class="product-name">
                                                    <h5><a href="<?= $linksp ?>"><?= $prd['ten_san_pham'] ?></a></h5>
                                                </td>
                                                <td class="product-cart-price">
                                                    <span class="amount">
                                                        <?= number_format($prd['gia_san_pham'], 0, ',', '.') ?> <u>đ</u>
                                                    </span>
                                                </td>
                                                <td class="product-cart-soluong">
                                                    <span class="amount">
                                                        <input type="number" value="<?= $quantityInCart ?>" min="1" max="<?= $prd['so_luong'] ?>" style="width: 40px;" id="quantity_<?= $prd['id'] ?>" oninput="updateQuantity(<?= $prd['id'] ?>, <?= $key ?>)">
                                                    </span>
                                                </td>
                                                <td class="product-remove">
                                                    <a onclick="removeForm(<?= $prd['id'] ?>)" href=""><i class=" ti-trash "></i></a>
                                                </td>
                                            </tr>
                                    <?php
                                            $tonggia += $prd['gia_san_pham'] * $quantityInCart;
                                            // $i++;
                                            $_SESSION['resultTotal'] = $tonggia;
                                        }
                                    }
                                    ?>
                                    <tr>
                                        <td colspan="3" style="text-align: center;">
                                            <h3>Tổng tiền</h3>
                                        </td>
                                        <td colspan="2" style="text-align: center;">
                                            <h3><span class="amount"><?= number_format($tonggia, 0, ',', '.') ?> <u>đ</u></span></h3>
                                            <input id="tonggiasanpham" type="hidden" value="<?= $tonggia ?>">
                                        </td>
                                    </tr>
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
                            <select id="khuyenmai" style="border: 1px solid black; margin-top: 20px; height: 50px;">
                                <option value="0">--Phiếu giảm giá--</option>
                                <?php
                                foreach ($khuyenmaiconhan as $km) {
                                    extract($km);
                                ?>
                                    <option value="<?= $phan_tram_phuyen_mai ?>"><?= $ma_khuyen_mai ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </form>
                    </div>
                    <div class="select-style mb-15">
                        <h4>Phương thức thanh toán</h4>
                        <select name="" class="select-two-active">
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
                <div id="km">
                    <h4>Tính giá sản phẩm</h4>
                    <div class="select-style mb-15">
                    </div><br>
                    <div class="select-style mb-15">
                    </div>
                    <?php
                    if (isset($_POST['khuyenmai'])) {
                        $khuyenmai = $_POST['khuyenmai'];
                    } else {
                        $khuyenmai = 0;
                    }
                    ?>
                    <div class="grand-total-wrap">
                        <div class="grand-total-content">
                            <div class="grand-total-content">
                                <h3 style="">Giá: <span><?= number_format($tonggia, 0, ',', '.') ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Khuyến mại: <span><?= $khuyenmai ?> %</span></h3>
                                <?php $tru = ($tonggia * $khuyenmai) / 100 ?>
                                <h3 style="margin-top: 20px;">Trừ: <span><?= number_format($tru, 0, ',', '.') ?> đ</span></h3>
                                <h3 style="margin-top: 20px;">Chi tiết:<span> <?= number_format($tonggia, 0, ',', '.') ?> - <?= number_format($tru, 0, ',', '.') ?> đ</span></h3>
                                <div class="grand-total">
                                    <?php $conlai = $tonggia - ($tonggia * $khuyenmai) / 100 ?>
                                    <h4 style="margin-top: 20px;">Còn lại: <span><?= number_format($conlai, 0, ',', '.') ?> đ</span></h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
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
                                    <input onclick="return confirm('đặt hàng thành công')" class="btn theme-color" type="submit" name="dathang" id="" style="border: 1px solid black;" value="Đặt hàng">
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


<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    function updateQuantity(id, index) {
        // alert('hihi');
        let newQuantity = $('#quantity_' + id).val();
        // console.log(newQuantity);
        if (newQuantity <= 0) newQuantity = 1;
        $.ajax({
            type: 'post',
            url: './view/khachhang/sanpham/updateQuantity.php',
            data: {
                id: id,
                quantity: newQuantity,
            },
            success: function(response) {
                // cập nhật thành công
                $.post('./view/khachhang/sanpham/tableCartOrder.php', function(data) {
                    $('#order').html(data);
                })
            },
            error: function(error) {
                console.log(error);
            }
        })
    }
</script>
<script>
    function removeForm(id) {
        if (confirm('xóa sản phẩm khỏi giỏ hàng')) {

            $.ajax({
                type: 'post',
                url: './view/khachhang/sanpham/removeFormCart.php',
                data: {
                    id: id,
                },
                success: function(response) {
                    // cập nhật thành công
                    $.post('./view/khachhang/sanpham/tableCartOrder.php', function(data) {
                        $('#order').html(data);
                    })
                },
                error: function(error) {
                    console.log(error);
                }
            })
        }
    }
</script>