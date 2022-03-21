<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <h5 class="h4 mb-4 text-gray-800">Tanggal Lahir: <?= date("d M Y", strtotime($login['tanggal_lahir'])) ?></h5>
    <h5 class="h4 mb-4 text-gray-800">Umur Bayi: <?= $umur_bayi ?> bulan</h5>
    <div class="">
        <form action="<?= site_url('Ujikpsp') ?>" method="post">
            <div class="col-md-5 d-inline-block">
                <div class="form-group">
                    <label for="pilih_umur">Pilih bulan</label>
                    <select class="form-control" id="" name="umur_bulan">
                        <?php
                        foreach ($pilih_bulan as $b) :
                            $selected = $b->bulan == $umur_bulan ? 'selected' : '';
                        ?>

                            <option value="<?= $b->bulan ?>" <?= $selected; ?>><?= $b->bulan ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Ganti" class="btn btn-primary">
                </div>
            </div>
        </form>
    </div>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Bulan</th>
                <th scope="col">Kuesioner</th>
                <th scope="col">Gambar</th>
                <th scope="col">Aksi</th>

            </tr>
        </thead>
        <tbody>
            <form method="post" action="<?= base_url('Ujikpsp/jawaban') ?>">
                <input type="hidden" name="umur_bulan" value="<?= $umur_bulan ?>">
                <?php $i = 1; ?>
                <?php foreach ($kpsp as $k) : ?>
                    <tr>
                        <th scope="row"><?= $i ?></th>
                        <td><?= $k['bulan'] ?></td>
                        <td><?= $k['koesioner'] ?> </td>
                        <td>
                            <?php if ($k['gambar'] != '') : ?>
                                <img src="<?= base_url('asset/img/kpsp/') . $k['gambar'] ?>" width="300px" height="200px">
                            <?php else : ?>
                                -
                            <?php endif; ?>
                        </td>
                        <td>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="ya<?= $i ?>" name="jawaban<?= $k['id'] ?>" value="1" class="custom-control-input" checked>
                                <label class="custom-control-label" for="ya<?= $i ?>">Ya</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="tidak<?= $i ?>" name="jawaban<?= $k['id'] ?>" value="0" class="custom-control-input">
                                <label class="custom-control-label" for="tidak<?= $i ?>">Tidak</label>
                            </div>

                        </td>
                    </tr>
                    <?php $i++; ?>
                <?php endforeach; ?>
        </tbody>
    </table>
    <div class="col-lg-6">
        <button type="submit" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off">
            Submit</button>
    </div>
    </form>




</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->