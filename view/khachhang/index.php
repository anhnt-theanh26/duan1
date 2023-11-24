<?php
session_start();
ob_start();


if (!isset($_SESSION['giohang']))
    $_SESSION['giohang'] = [];


include '../../model/binhluan.php';
include '../../model/danhmuc.php';
include '../../model/hoadon.php';
include '../../model/khachhang.php';
include '../../model/khuyenmai.php';
include '../../model/logo_banner.php';
include '../../model/nguoidung.php';
include '../../model/pdo.php';
include '../../model/sanpham.php';
include '../../model/taikhoan.php';
include '../../model/thongke.php';
include '../../model/tintuc.php';




$danhmuc = loadall_danhmuc();
$logo = select_logo();
$admin = loadall_admin();
$banner = loadall_banner();
include 'header.php';
if (isset($_GET['act']) && ($_GET['act']) != "") {
    $act = $_GET['act'];
    switch ($act) {
        case 'home':
            $tintuc = select_new();
            $danhmuc = loadall_danhmuc();
            $sanpham = loadall_sanpham_home();
            include 'home.php';
            break;

        case 'loadallsanpham':
            $danhmuc = loadall_danhmuc();
            $sanpham = loadall_sanpham_san_pham();
            include 'sanpham/sanpham.php';
            break;

        case 'chitietsanpham':
            if (isset($_GET['idsp']) && ($_GET['iddm'])) {
                $id = $_GET['idsp'];
                $iddm = $_GET['iddm'];
                $danhmuc = loadone_danhmuc($iddm);
                $sanpham = loadone_sanpham($id);
                $cungloai = loadallsp_cungloai($id, $iddm);
                $_SESSION['view'] = update_view($id);
            }
            include 'sanpham/chitietsanpham.php';
            break;

        case 'danhmuc':
            if (isset($_GET['id']) && ($_GET['id']) > 0) {
                $id = $_GET['id'];
                $danhmuc = loadall_danhmuc();
                $sanpham = loadallsp_cungdanhmuc($id);
            }
            if (isset($_POST['loc'])) {
                $tk = $_POST['tk'];
                $id = $_POST['id'];
                $sanpham = loc_san_pham($tk, $id);
            }
            include 'sanpham/sanpham.php';
            break;

        case 'loctheodanhmuc':
            break;

        case 'search':
            if (isset($_POST['timkiem'])) {
                $tk = $_POST['keyw'];
                $iddm = 0;
            }
            $sanpham = loadall_sanpham($tk, $iddm);
            $danhmuc = loadall_danhmuc();
            include 'sanpham/sanpham.php';
            break;

        case 'tintuc':
            $tintuc = loadall_tin_tuc();
            include 'tintuc/tintuc.php';
            break;

        case 'chitiettintuc':
            if (isset($_GET['id']) && ($_GET['id']) != 0) {
                $id = $_GET['id'];
            }
            $tintuc = select_new();
            $danhmuc = loadall_danhmuc();
            $chitiettintuc = loadone_tin_tuc($id);
            include 'tintuc/chitiettintuc.php';
            break;


        case 'dangnhap-dangky':
            include 'taikhoan/log-singin.php';
            break;

        case 'dangxuat':
            if (isset($_SESSION['user']) && ($_SESSION['user'])) {
                dangxuat();
            }
            header('location: index.php?act=home');
            break;

        case 'dangnhaptaikhoan':
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
                $tendangnhap = $_POST['tendangnhap'];
                $matkhau = md5($_POST['matkhau']);
                $dangnhap = dang_nhap_khach_hang($tendangnhap, $matkhau);
                if (is_array($dangnhap)) {
                    $_SESSION['user'] = $dangnhap;
                    header("location: index.php?act=home");
                } else {
                    $thongbao = 'dang nhap that bai! tai khoan khong ton tai';
                }
            }
            include 'taikhoan/dangnhap.php';
            break;


        case 'dangkytaikhoan':
            if (isset($_POST['dangky']) && ($_POST['dangky'])) {
                $ten = $_POST['ten'];
                $tendangnhap = $_POST['tendangnhap'];
                $matkhau = $_POST['matkhau'];
                $email = $_POST['email'];
                $sdt = $_POST['sdt'];
                $diachi = $_POST['diachi'];
                if ($ten != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $diachi != "") {
                    insert_taikhoan($ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi);
                    $thongbao = 'Đăng ký thành công';
                } else {
                    $thongbao = 'không để trống các cột để đăng ký';
                }
            }
            include 'taikhoan/dangky.php';
            break;

        case 'addcart':
            if (isset($_POST['addtocart']) && ($_POST['addtocart'])) {
                $id = $_POST['id'];
                $name = $_POST['name'];
                $price = $_POST['price'];
                $img = $_POST['img'];
                $iddm = $_POST['iddm'];

                if (isset($_POST['soluong']) && ($_POST['soluong']) > 0) {
                    $soluong = $_POST['soluong'];
                } else {
                    $soluong = 1;
                }

                if (checktrungsp($id) >= 0) {
                    $vitrisptrung = checktrungsp($id);
                    updateslsp($vitrisptrung, $soluong);
                } else {
                    $item = array($id, $name, $img, $price, $soluong, $iddm);
                    array_push($_SESSION['giohang'], $item);
                }
                // header("location: " . $_SERVER['HTTP_REFERER']);
                // $thongbao = 'them vao gio hang';
                // header('location: index.php?act=cart');
            }
            header("location: " . $_SERVER['HTTP_REFERER']);
            break;

        case 'cart':
            $khuyenmai = loadall_khuyenmai_conhan();
            include 'sanpham/cart.php';
            break;

        case 'delcart':
            if (isset($_SESSION['giohang'])) {
                unset($_SESSION['giohang']);
            }
            header("location: index.php?act=cart");
            break;

        case 'donhangdat':
            include 'taikhoan/donhangdat.php';
            break;

        case 'taikhoan':
            if (isset($_SESSION['user'])) {
                $id = $_SESSION['user']['id'];
                $binhluan = load_binhluan_khach_hang($_SESSION['user']['id']);
            }
            if (isset($_GET['idbl']) && ($_GET['idbl']) > 0) {
                $id = $_GET['idbl'];
                delete_binhluan($id);
                header("location: index.php?act=taikhoan");
            }
            $hoadon = hoa_don_khach_hang($_SESSION['user']['id']);
            include 'taikhoan/taikhoan.php';
            break;

        case 'chitiethoadon':
            if (isset($_GET['id']) && ($_GET['id'])) {
                $id = $_GET['id'];
                $hoadon = chi_tiet_hoa_don($id);
            }
            include 'taikhoan/donhang.php';
            break;

        case 'huydonhang':
            if (isset($_GET['iddh']) && ($_GET['iddh']) > 0) {
                $id = $_GET['iddh'];
                huy_don_hang($id);
            }
            include 'taikhoan/taikhoan.php';
            break;

        case 'doithongtin':
            if (isset($_POST['capnhaptaikhoan']) && ($_POST['capnhaptaikhoan'])) {
                $id = $_POST['id'];
                $ten = $_POST['ten'];
                $tendangnhap = $_POST['tendangnhap'];
                $email = $_POST['email'];
                $sdt = $_POST['sdt'];
                $diachi = $_POST['diachi'];
                $matkhau = $_POST['matkhau'];
                $matkhaucu = $_POST['matkhaucu'];
                $img = $_FILES['img']['name'];
                $target_dir = '../../view/img/';
                $target_file = $target_dir . basename($img);
                move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
                if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau != "") {
                    update_khachhang($id, $ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi, $img);
                    $dangnhap = dang_nhap_khach_hang($tendangnhap, md5($matkhau));
                    if (is_array($dangnhap)) {
                        $_SESSION['user'] = $dangnhap;
                        $thongbao = 'sửa thông tin thành công';
                    }
                } else if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau == "") {
                    update_khachhang($id, $ten, $tendangnhap, $matkhaucu, $email, $sdt, $diachi, $img);
                    $dangnhap = dang_nhap_khach_hang($tendangnhap, $matkhaucu);
                    if (is_array($dangnhap)) {
                        $_SESSION['user'] = $dangnhap;
                        $thongbao = 'sửa thông tin thành công';
                    }
                } else {
                    $thongbao = ' sửa thông tin thất bại';
                }
            }
            // include 'taikhoan/taikhoan.php';
            header("location: index.php?act=taikhoan");
            break;
    }
} else {
    $tintuc = select_new();
    $danhmuc = loadall_danhmuc();
    $sanpham = loadall_sanpham_home();
    include 'home.php';
}
include 'footer.php';
