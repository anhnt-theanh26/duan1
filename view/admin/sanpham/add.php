<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Thêm sản phẩm</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Thêm sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card-header">
                <h3 class="card-title">Thêm sản phẩm</h3>
            </div>
            <form action="index.php?act=" method="post" enctype="multipart/form-data">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên sản phẩm</label>
                        <input name="tensanpham" type="text" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Giá sản phẩm</label>
                        <input name="giasanpham" type="text" class="form-control" id="exampleInputEmail1" placeholder="Giá sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Số lượng sản phẩm</label>
                        <input name="soluongsanpham" type="number" value="1" class="form-control" id="exampleInputEmail1" placeholder="Số lượng sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Ảnh đại diện sản phẩm</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="anhdaiien" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                            </div>
                            <!-- <div class="input-group-append">
                                <span class="input-group-text">Upload</span>
                            </div> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Ảnh 1</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="anh1" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                            </div>
                            <!-- <div class="input-group-append">
                                <span class="input-group-text">Upload</span>
                            </div> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Ảnh 2</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="anh2" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                            </div>
                            <!-- <div class="input-group-append">
                                <span class="input-group-text">Upload</span>
                            </div> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Ảnh 3</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="anh3" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                            </div>
                            <!-- <div class="input-group-append">
                                <span class="input-group-text">Upload</span>
                            </div> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Danh mục sản phẩm</label><br>
                        <select name="iddm" id="">
                            <option value="">danh muc 1</option>
                            <option value="">danh muc 12</option>
                            <option value="">danh muc 13</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                        <textarea name="edit" id="edit" cols="30" rows="10"></textarea>

                    </div>
                    

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <input type="submit" class="btn btn-primary" name="themsanpham" id="" value="Thêm sản phẩm">
                </div>
            </form>

    </section>
    <!-- /.content -->
</div>