<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="row">
        <div class="col-lg-8">
            <?= $this->session->flashdata('pesan'); ?>
            <form action="<?= base_url('user/ubahpassword'); ?>" method="post">
                <div class="form-group">
                    <label for="password_sekarang">Password Sekarang</label>
                    <input type="password" class="form-control" id="password_sekarang" name="password_sekarang">
                    <?= form_error('password_sekarang', '<p class="text-danger pl-3">', '</p>'); ?>

                </div>
                <div class="form-group">
                    <label for="password_baru1">Password Baru</label>
                    <input type="password" class="form-control" id="password_baru1" name="password_baru1">
                    <?= form_error('password_baru1', '<p class="text-danger pl-3">', '</p>'); ?>
                </div>
                <div class="form-group">
                    <label for="password_baru2">Ulangi Password Baru</label>
                    <input type="password" class="form-control" id="password_baru2" name="password_baru2">
                    <?= form_error('password_baru1', '<p class="text-danger pl-3">', '</p>'); ?>
                </div>
                <div class="form-group"><button type="submit" class="btn btn-primary">Ubah Sekarang</button></div>
            </form>
        </div>

    </div>

    <!-- /.container-fluid -->
</div>


</div>
<!-- End of Main Content -->