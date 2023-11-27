<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TAD Admin </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <!-- creditor -->
  <script src="ckeditor_4.22.1_standard/ckeditor/ckeditor.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Preloader -->

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <!-- <li class="nav-item d-none d-sm-inline-block">
          <a href="index3.html" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">Contact</a>
        </li> -->
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->


      <!-- Sidebar -->
      <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <?php
          if (isset($_SESSION['admin'])) {
            extract($_SESSION['admin']);
            $linkimg = '../../view/img/' . $img_nguoi_dung;
          ?>
            <div class="image">
              <a href="index.php?act=suanguoidung&&id=<?= $id ?>">
                <img src="<?= $linkimg ?>" class="img-circle elevation-2" alt="User Image">
              </a>
            </div>
            <div class="info">
              <a href="index.php?act=suanguoidung&&id=<?= $id ?>" class="d-block"><?= $ten_nguoi_dung ?></a>
            </div>
          <?php
          } else {
          ?>
            <div class="image">
              <img src="../../view/img/macdinh.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
              <a href="#" class="d-block">Người dùng</a>
            </div>
          <?php
          }
          ?>
        </div>

        <!-- SidebarSearch Form -->
        <!-- <div class="form-inline">
          <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-sidebar">
                <i class="fas fa-search fa-fw"></i>
              </button>
            </div>
          </div>
        </div> -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Logo
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=logo" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Banner
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=banner" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=thembanner" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=bannerxoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Danh mục
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=danhmuc" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themdanhmuc" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=danhmucxoa" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh mục xóa</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon fas fa-chart-pie"></i> -->
                <p>
                  Sản phẩm
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=sanpham" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themsanpham" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=sanphamxoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon fas fa-tree"></i> -->
                <p>
                  Bình luận
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=binhluan" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=addbinhluan" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm bình luận</p>
                  </a>
                </li>

              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Tin tức
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=tintuc" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themtintuc" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=tintucxoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Khách hàng
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=khachhang" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themkhachhang" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=khachhangxoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon fas fa-search"></i> -->
                <p>
                  Người dùng
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=nguoidung" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themnguoidung" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=nguoidungxoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon fas fa-table"></i> -->
                <p>
                  Hóa đơn
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=hoadon" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=dangchuanbi" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Đang chuẩn bị</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=donhangdanggiao" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Đang giao</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=donhangdagiao" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Đã giao</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <p>
                  Khuyến mại
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=khuyenmai" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=themkhuyenmai" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=khuyenmaixoamem" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Xóa mềm</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=khuyenmaichuahethan" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Chưa hết hạn</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon fas fa-table"></i> -->
                <p>
                  Thống kê
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?act=thongke" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thống kê</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?act=bieudo" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Biểu đồ</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <!-- <i class="nav-icon far fa-envelope"></i> -->
                <p>
                  Tài khoản
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <!-- <li class="nav-item">
                  <a href="index.php?act=dangnhap" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Đăng nhập</p>
                  </a>
                </li> -->
                <li class="nav-item">
                  <a href="index.php?act=dangxuat" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Đăng xuất</p>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>