<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-7 mx-auto">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Buat Akun!</h1>
                        </div>
                        <form class="user" method="post" action="<?= base_url('auth/regristrasi') ?>">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="nama" name="nama" placeholder="Nama Lengkap" value="<?= set_value('nama'); ?>"> <?= form_error('nama', '<p class="text-danger pl-3">', '</p>'); ?>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="nama_bayi" name="nama_bayi" placeholder="Nama Lengkap Bayi" value="<?= set_value('nama_bayi'); ?>"> <?= form_error('nama_bayi', '<p class="text-danger pl-3">', '</p>'); ?>
                            </div>

                            <div class="form-group">
                                <input type="date" class="form-control form-control-user" id="tanggal_lahir" name="tanggal_lahir" placeholder="Tanggal Lahir Anak : yyyy/mm/dd"><?= form_error('tanggal_lahir', '<p class="text-danger pl-3">', '</p>'); ?>

                            </div>


                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Email" value="<?= set_value('email'); ?>"> <?= form_error('email', '<p class="text-danger pl-3">', '</p>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password"> <?= form_error('password1', '<p class="text-danger pl-3">', '</p>'); ?>
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Ulangi Password">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                Regristrasi Akun
                            </button>
                        </form>
                        <hr>

                        <div class="text-center">
                            <a class="small" href="<?= base_url('auth') ?>">Sudah Punya akun? Login!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>