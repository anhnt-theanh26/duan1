<?php
extract($chitiettintuc);
$linkimg = '../../view/img/' . $img_tin_tuc;
$linkdm = 'index.php?act=danhmuc&&id=' . $iddm;
?>


<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2 data-aos="fade-up" >Tin tức</h2>
            <ul data-aos="fade-up" >
                <li><a href="index.php?act=home">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Chi tiết tin tức</li>
            </ul>
        </div>
    </div>
    <div class="breadcrumb-img-1" data-aos="fade-right" >
        <img src="#" alt="">
    </div>
    <div class="breadcrumb-img-2" data-aos="fade-left" >
        <img src="#" alt="">
    </div>
</div>
<div class="blog-details-area pt-100 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog-details-wrapper">
                    <div class="blog-details-img-date-wrap mb-35" data-aos="fade-up" >
                        <div class="blog-details-img">
                            <img src="<?= $linkimg ?>" alt="" width="770px" height="440px">
                        </div>
                        <div class="blog-details-date">
                            <h5><?php echo date("d", strtotime($ngay_dang)) ?> <span><?php echo date("m", strtotime($ngay_dang)) ?></span></h5>
                        </div>
                    </div>
                    <div class="blog-meta-2" data-aos="fade-up" >
                        <ul>
                            <li><a href="<?= $linkdm ?>"><?= $iddm ?></a>,</li>
                        </ul>
                    </div>
                    <h1 data-aos="fade-up" ><?= $tieu_de ?></h1>
                    <p data-aos="fade-up" ><?= $noi_dung ?></p>
                    <div class="tag-social-wrap">
                        <div class="tag-wrap" data-aos="fade-up" >
                            <span>Danh mục:</span>
                            <ul>
                                <?php
                                foreach ($danhmuc as $dm) {
                                    extract($dm);
                                    $linkdm = 'index.php?act=danhmuc&&id=' . $id;
                                ?>
                                    <li><a href="<?= $linkdm ?>"><?= $ten_danh_muc ?></a> , </li>
                                <?php
                                }
                                ?>
                                <!-- <li><a href="#">Furniture</a>,</li>
                                <li><a href="#">Electronic</a>,</li>
                                <li><a href="#">Fashion</a></li> -->
                            </ul>
                        </div>
                        <div class="social-comment-digit-wrap" data-aos="fade-up" >
                            <div class="social-icon-style-2">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="comment-digit">
                                <a href="#">2 <i class="fa fa-comments"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="blog-comment-wrapper">

                        <iframe src="view/tintuc/binhluannews.php?idn=" frameborder="0" width="100%" height="300px">
                        </iframe>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar-wrapper blog-sidebar-mt">
                    <div class="sidebar-widget mb-40" data-aos="fade-up" >
                        <div class="sidebar-widget-title-2 mb-30">
                            <h3>Latest Post</h3>
                        </div>
                        <div class="latest-post-wrap">
                            <?php
                            foreach ($tintuc as $tt) {
                                extract($tt);
                                $linknews = 'index.php?act=chitiettintuc&&id=' . $idtt;
                                $linkimg = '../../view/img/' . $img_tin_tuc;
                            ?>
                                <div class="single-latest-post">
                                    <div class="latest-post-img">
                                        <a href="<?= $linknews ?>"><img src="<?= $linkimg ?>" alt="" style="width: 200px; height: 110px;"></a>
                                    </div>
                                    <div class="latest-post-content">
                                        <span><?php echo date("d-m-y", strtotime($ngay_dang)) ?></span>
                                        <h4><a href="<?= $linknews ?>"><?= $tieu_de ?></a></h4>
                                        <div class="latest-post-btn">
                                            <a href="<?= $linknews ?>l">Tiếp tục đọc</a>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                    <div class="sidebar-widget mb-35" data-aos="fade-up" >
                        <div class="sidebar-widget-title-2 mb-30">
                            <h3>Danh mục</h3>
                        </div>
                        <div class="sidebar-widget-tag-2">
                            <?php
                            foreach ($danhmuc as $dm) {
                                extract($dm);
                                $linkdm = 'index.php?act=danhmuc&&id=' . $id;
                            ?>
                                <a href="<?= $linkdm ?>"><?= $ten_danh_muc ?></a>
                            <?php
                            }
                            ?>
                            <!-- <a href="#">Furniture</a>
                            <a href="#">Electronic</a>
                            <a href="#">Home Decore</a>
                            <a href="#">Design Home</a>
                            <a href="#">Furniture</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>