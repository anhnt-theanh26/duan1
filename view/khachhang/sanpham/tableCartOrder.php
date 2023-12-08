<?php
session_start();
include '../../../model/binhluan.php';
include '../../../model/danhmuc.php';
include '../../../model/hoadon.php';
include '../../../model/khachhang.php';
include '../../../model/khuyenmai.php';
include '../../../model/logo_banner.php';
include '../../../model/nguoidung.php';
include '../../../model/pdo.php';
include '../../../model/sanpham.php';
include '../../../model/taikhoan.php';
include '../../../model/thongke.php';
include '../../../model/tintuc.php';
$khuyenmaiconhan = loadall_khuyenmai_conhan();

if (!empty($_SESSION['giohang'])) {
    $cart = $_SESSION['giohang'];
    $idpro = array_column($cart, 'id');
    // var_dump($idpro);
    $idList = implode(',', $idpro);
    $dataDB = loadone_sanpham_cart($idList);
    // var_dump($dataDB);
}
?>
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
                                        $linksp = "index.php?act=chitietsanpham&&idsp=" . $prd['id'] . "&&iddm=" . $prd['iddm'];
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
                                                <h5><a href="<?= $linksp ?>">
                                                        <?= $prd['ten_san_pham'] ?>
                                                    </a></h5>
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
                                        <h3><span class="amount">
                                                <?= number_format($tonggia, 0, ',', '.') ?> <u>đ</u>
                                            </span></h3>
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