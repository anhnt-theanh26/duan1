<?php
function dang_xuat_admin()
{
    if (isset($_SESSION['admin']) && ($_SESSION['admin'])) {
        unset($_SESSION['admin']);
    }
    include 'taikhoan/dangnhap.php';
}
