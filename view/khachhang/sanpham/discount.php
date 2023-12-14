<?php
$khuyenmai = $_POST['khuyenmai'];
$tonggia = $_POST['tonggia'];
$conlai = $tonggia - ($tonggia * $khuyenmai) / 100;
?>
<div class="input-style" id="khuyenmaicode">
    <input name="khuyenmai" type="hidden" value="<?= $khuyenmai ?>">
    <input name="tongtien" type="hidden" value="<?= $conlai ?>">
</div>