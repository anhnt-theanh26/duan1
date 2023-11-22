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
                                <h5><?php echo date("d", strtotime($ngay_dang)) ?><span><?php echo date("m", strtotime($ngay_dang)) ?></span></h5>
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
            <!-- <div class="col-lg-4 col-md-6">
                <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="400">
                    <div class="blog-img-date-wrap mb-25">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/images/blog/blog-2.png" alt=""></a>
                        </div>
                        <div class="blog-date">
                            <h5>03 <span>Jun.</span></h5>
                        </div>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <ul>
                                <li><a href="#">Furniture</a>,</li>
                                <li>By:<a href="#"> Admin</a></li>
                            </ul>
                        </div>
                        <h3><a href="blog-details.html">Duis et volutpat pellentesque.</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
                        <div class="blog-btn-2 btn-hover">
                            <a class="btn hover-border-radius theme-color" href="blog-details.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="600">
                    <div class="blog-img-date-wrap mb-25">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/images/blog/blog-3.png" alt=""></a>
                        </div>
                        <div class="blog-date">
                            <h5>07 <span>Feb.</span></h5>
                        </div>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <ul>
                                <li><a href="#">Furniture</a>,</li>
                                <li>By:<a href="#"> Admin</a></li>
                            </ul>
                        </div>
                        <h3><a href="blog-details.html">Vivamus vitae dolor convallis.</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
                        <div class="blog-btn-2 btn-hover">
                            <a class="btn hover-border-radius theme-color" href="blog-details.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="200">
                    <div class="blog-img-date-wrap mb-25">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/images/blog/blog-2.png" alt=""></a>
                        </div>
                        <div class="blog-date">
                            <h5>08 <span>Dec.</span></h5>
                        </div>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <ul>
                                <li><a href="#">Furniture</a>,</li>
                                <li>By:<a href="#"> Admin</a></li>
                            </ul>
                        </div>
                        <h3><a href="blog-details.html">Vivamus amet tristique orci.</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
                        <div class="blog-btn-2 btn-hover">
                            <a class="btn hover-border-radius theme-color" href="blog-details.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="400">
                    <div class="blog-img-date-wrap mb-25">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/images/blog/blog-3.png" alt=""></a>
                        </div>
                        <div class="blog-date">
                            <h5>02 <span>Nov.</span></h5>
                        </div>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <ul>
                                <li><a href="#">Furniture</a>,</li>
                                <li>By:<a href="#"> Admin</a></li>
                            </ul>
                        </div>
                        <h3><a href="blog-details.html">Pellentesque pretium place.</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
                        <div class="blog-btn-2 btn-hover">
                            <a class="btn hover-border-radius theme-color" href="blog-details.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="blog-wrap mb-50" data-aos="fade-up" data-aos-delay="600">
                    <div class="blog-img-date-wrap mb-25">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/images/blog/blog-1.png" alt=""></a>
                        </div>
                        <div class="blog-date">
                            <h5>09 <span>Oct.</span></h5>
                        </div>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <ul>
                                <li><a href="#">Furniture</a>,</li>
                                <li>By:<a href="#"> Admin</a></li>
                            </ul>
                        </div>
                        <h3><a href="blog-details.html">Sed euismod tristique dolor.</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
                        <div class="blog-btn-2 btn-hover">
                            <a class="btn hover-border-radius theme-color" href="blog-details.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
        <!-- <div class="pagination-style-1" data-aos="fade-up" data-aos-delay="200">
                    <ul>
                        <li><a class="active" href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a class="next" href="#"><i class=" ti-angle-double-right "></i></a></li>
                    </ul>
                </div> -->
    </div>
</div>