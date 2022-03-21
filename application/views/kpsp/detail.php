<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

    <div class="row">
        <div class="col-md-4">
            <p class="mb-4 text-gray-800">Tanggal Lahir: <?= date("d M Y", strtotime($login['tanggal_lahir'])) ?></p>
            <p class="mb-4 text-gray-800">Umur Bayi: <?= $bulan ?> bulan</p>
            <p class="mb-4 text-gray-800">Umur yang Dipilih: <?= $uji_kpsp->umur ?> bulan</p>
        </div>
        <div class="col-md-4">
            <p class="mb-4 text-gray-800">Tanggal Uji: <?= date("d M Y", strtotime($uji_kpsp->tanggal_uji)) ?> </p>
            <p class="mb-4 text-gray-800">Kategori: <?= strtoupper($uji_kpsp->kategori) ?></p>
        </div>
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
            <?php $i = 1; ?>
            <?php $j = 0; ?>
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
                            <input type="radio" id="ya<?= $i ?>" name="jawaban<?= $k['id'] ?>" value="1" class="custom-control-input" disabled <?= $jawaban_ujikpsp[$j]['jawaban'] == 1 ? 'checked' : ''; ?>>
                            <label class="custom-control-label" for="ya<?= $i ?>">Ya</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="tidak<?= $i ?>" name="jawaban<?= $k['id'] ?>" value="0" class="custom-control-input" disabled <?= $jawaban_ujikpsp[$j]['jawaban'] == 0 ? 'checked' : ''; ?>>
                            <label class="custom-control-label" for="tidak<?= $i ?>">Tidak</label>
                        </div>

                    </td>
                </tr>
                <?php
                $i++;
                $j++;
                ?>
            <?php endforeach; ?>
        </tbody>
    </table>


</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->