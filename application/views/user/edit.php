<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="row">
        <div class="col-lg-8">
            <?= form_open_multipart('user/edit'); ?>
            <?= $this->session->flashdata('pesan'); ?>

            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="email" name="email" value="<?= $login['email'] ?>" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="nama" class="col-sm-2 col-form-label">Nama Lengkap</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nama" name="nama" value="<?= $login['nama'] ?>">
                    <?= form_error('nama', '<p class="text-danger pl-3">', '</p>'); ?>
                </div>
            </div>
            <div class="form-group row">
                <label for="nama_bayi" class="col-sm-2 col-form-label">Nama Lengkap Bayi</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nama_bayi" name="nama_bayi" value="<?= $login['nama_bayi'] ?>">
                    <?= form_error('nama_bayi', '<p class="text-danger pl-3">', '</p>'); ?>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2">Gambar</div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="<?= base_url('asset/img/profile/') . $login['gambar'] ?>" class="img-thumbnail">
                        </div>

                        <div class="col-sm-9">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="gambar" name="gambar">
                                <label class="custom-file-label" for="gambar">Plih Gambar</label>
                                <p class="text-danger pl-3">*File harus bertipe gif, jpg atau png</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="form-group row justify-content-end">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit</button>
                </div>
            </div>

            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->