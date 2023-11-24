<div class="blog-area pt-100 pb-100">
    <div class="container">
        <div class="row">
            <?php
            foreach ($tintuc as $tt) {
                extract($tt);
                $linkimg = '../../view/img/' . $img_tin_tuc;
                $linknews = 'index.php?act=chitiettintuc&&id='.$idtt;
                $linkdm = 'index.php?act=danhmuc&&id=' . $iddm;
            ?>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="200">
                        <div class="blog-img-date-wrap mb-25">
                            <div class="blog-img">
                                <a href="<?= $linknews ?>"><img src="<?= $linkimg ?>" alt="" style="width: 370x; height: 250px;"></a>
                            </div>
                            <div class="blog-date">
                                <h5><?= date("d", strtotime($ngay_dang)) ?><span><?= date("m", strtotime($ngay_dang)) ?></span></h5>
                                <!-- <h5>05 <span>May</span></h5> -->
                            </div>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <ul>
                                    <li><a href="<?= $linkdm ?>"><?= $ten_danh_muc ?></a></li>
                                </ul>
                            </div>
                            <h3><a href="<?= $linknews ?>"><?= $tieu_de ?></a></h3>
                            <div class="blog-btn-2 btn-hover">
                                <a class="btn hover-border-radius theme-color" href="<?= $linknews ?>">Đọc thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
            
        </div>
    </div>
</div>