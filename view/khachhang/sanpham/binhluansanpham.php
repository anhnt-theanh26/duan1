<?php
ob_start();
session_start();
include '../../../model/pdo.php';
include '../../../model/binhluan.php';

$idsp = $_REQUEST['idsp'];
$dsbl =  binh_luan_san_pham($idsp);
?>

<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from htmldemo.net/urdan/urdan/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 01 Nov 2023 08:19:45 GMT -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>TAD</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="Urdan Minimal eCommerce Bootstrap 5 Template is a stunning eCommerce website template that is the best choice for any online store.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <link rel="canonical" href="https://htmldemo.hasthemes.com/urdan/index.html" />

    <!-- Open Graph (OG) meta tags are snippets of code that control how URLs are displayed when shared on social media  -->
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Urdan - Minimal eCommerce HTML Template" />
    <meta property="og:url" content="https://htmldemo.hasthemes.com/urdan/index.html" />
    <meta property="og:site_name" content="Urdan - Minimal eCommerce HTML Template" />
    <!-- For the og:image content, replace the # with a link of an image -->
    <meta property="og:image" content="#" />
    <meta property="og:description" content="Urdan Minimal eCommerce Bootstrap 5 Template is a stunning eCommerce website template that is the best choice for any online store." />
    <!-- Add site Favicon -->
    <link rel="icon" href="../assets/images/favicon/cropped-favicon-32x32.png" sizes="32x32" />
    <link rel="icon" href="../assets/images/favicon/cropped-favicon-192x192.png" sizes="192x192" />
    <link rel="apple-touch-icon" href="../assets/images/favicon/cropped-favicon-180x180.png" />
    <meta name="msapplication-TileImage" content="../assets/images/favicon/cropped-favicon-270x270.png" />
    <link rel="stylesheet" href="../assets/">
    <!-- All CSS is here
	============================================ -->
    <link rel="stylesheet" href="../assets/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/vendor/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="../assets/css/vendor/themify-icons.css" />
    <link rel="stylesheet" href="../assets/css/vendor/font-awesome.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins/animate.css" />
    <link rel="stylesheet" href="../assets/css/plugins/aos.css" />
    <link rel="stylesheet" href="../assets/css/plugins/magnific-popup.css" />
    <link rel="stylesheet" href="../assets/css/plugins/swiper.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins/jquery-ui.css" />
    <link rel="stylesheet" href="../assets/css/plugins/nice-select.css" />
    <link rel="stylesheet" href="../assets/css/plugins/select2.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins/easyzoom.css" />
    <link rel="stylesheet" href="../assets/css/plugins/slinky.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
</head>




<body>
    <div class="main-wrapper main-wrapper-2">
        <div class="blog-details-area pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8" style="width: 100%;">
                        <div class="blog-details-wrapper" style="width: 100%;">
                            <div class="blog-comment-form-wrap" style="width: 100%;">
                                <div class="blog-comment-form-title">
                                    <h2>Bình luận</h2>
                                </div>
                                <div class="blog-comment-form">
                                    <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
                                        <div class="row">
                                            <input type="hidden" name="idsp" id="" placeholder="id" value="<?= $idsp ?>">
                                            <div class="col-lg-12 col-md-12">
                                                <div class="single-blog-comment-form" >
                                                    <textarea name="noidung" placeholder="Comment"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="comment-submit-btn btn-hover" >
                                                    <?php
                                                    if (isset($_SESSION['user']) && ($_SESSION['user'])) {
                                                        extract($_SESSION['user']);
                                                    ?>
                                                        <input type="submit" name="binhluan" class="submit" placeholder="Gửi bình luận ">
                                                    <?php
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <?php
                                    if (isset($_POST['binhluan']) && ($_POST['binhluan'])) {
                                        $noidung = $_POST['noidung'];
                                        $idkh = $_SESSION['user']['id'];
                                        $idsp = $_POST['idsp'];
                                        insert_binhluan_sanpham($idsp, $idkh, $noidung);
                                        header("location: " . $_SERVER['HTTP_REFERER']);
                                    }
                                    ?>

                                </div>
                            </div>
                            <div class="blog-comment-wrapper">
                                <?php
                                foreach ($dsbl as $ds) {
                                    extract($ds);
                                    $linkimg = '../../../view/img/' . $img_khach_hang;
                                    // $link = '';
                                ?>
                                    <div class="single-comment-wrapper single-comment-border" style="margin-top: 10px;">
                                        <div class="blog-comment-img">
                                            <img src="<?= $linkimg ?>" alt="" style="border-radius: 50%;">
                                        </div>
                                        <div class="blog-comment-content">
                                            <div class="comment-info-reply-wrap">
                                                <div class="comment-info">
                                                    <span><?php echo date("d-m-y", strtotime($ngay_binh_luan)) ?></span>
                                                    <h4><?= $ten_khach_hang ?></h4>
                                                </div>
                                            </div>
                                            <p><?= $noi_dung ?></p>
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
        </div>
    </div>
    <!-- All JS is here -->
    <script src="../assets/js/vendor/modernizr-3.11.7.min.js"></script>
    <script src="../assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="../assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../assets/js/vendor/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/wow.js"></script>
    <script src="../assets/js/plugins/scrollup.js"></script>
    <script src="../assets/js/plugins/aos.js"></script>
    <script src="../assets/js/plugins/magnific-popup.js"></script>
    <script src="../assets/js/plugins/jquery.syotimer.min.js"></script>
    <script src="../assets/js/plugins/swiper.min.js"></script>
    <script src="../assets/js/plugins/imagesloaded.pkgd.min.js"></script>
    <script src="../assets/js/plugins/isotope.pkgd.min.js"></script>
    <script src="../assets/js/plugins/jquery-ui.js"></script>
    <script src="../assets/js/plugins/jquery-ui-touch-punch.js"></script>
    <script src="../assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="../assets/js/plugins/waypoints.min.js"></script>
    <script src="../assets/js/plugins/jquery.counterup.js"></script>
    <script src="../assets/js/plugins/select2.min.js"></script>
    <script src="../assets/js/plugins/easyzoom.js"></script>
    <script src="../assets/js/plugins/slinky.min.js"></script>
    <script src="../assets/js/plugins/ajax-mail.js"></script>
    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>
</body>


<!-- Mirrored from htmldemo.net/urdan/urdan/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 01 Nov 2023 08:19:47 GMT -->

</html>
<?php
ob_end_flush();
?>