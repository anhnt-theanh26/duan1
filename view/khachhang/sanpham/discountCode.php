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
?>
<?php
$khuyenmai = $_POST['khuyenmai'];
$tonggia = $_POST['tonggia'];
$conlai = $tonggia - ($tonggia * $khuyenmai / 100);
?>
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
<script>
    $(document).ready(function() {
        // Khai báo biến tonggia ở đây để có thể sử dụng nó ở nơi khác
        var tonggia = $('#tonggiasanpham').val();

        $('#tonggiasanpham').on('change', function() {
            tonggia = $(this).val();
            console.log("Changed value:", tonggia);
        });

        $("#khuyenmai").on("change", function() {
            var khuyenmai = $(this).val();

            $.ajax({
                url: './view/khachhang/sanpham/discountCode.php',
                type: 'post',
                dataType: 'html',
                data: {
                    khuyenmai: khuyenmai,
                    tonggia: tonggia,
                },
                success: function(response) {
                    // Update successful
                    $('#km').html(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });

            console.log("Selected option:", khuyenmai);
            console.log("Selected option:", tonggia);
        });
    });
</script>