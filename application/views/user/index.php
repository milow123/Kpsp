<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="card text-center">
        <div class="card-header">
            SELAMAT DATANG DI MONITORING TUMBUH KEMBANG ANAK
        </div>
        <div class="card-body">
            <p class="card-text">Kuesioner Pra Skrining Perkembangan (KPSP) merupakan suatu instrumen deteksi dini dalam perkembangan anak usia 0 sampai 6 tahun. KPSP ini berguna untuk mengetahui perkembangan anak normal atau ada penyimpangan.</p>
            <a href="<?= base_url('ujikpsp') ?>" class="btn btn-primary">Mulai Tes</a>
        </div>
    </div>


    <table class="table table-hover mt-4">
        <thead>
            <h1 class="h1 mt-4 mb-4 text-gray-800"><?= $sub ?></h1>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Bulan</th>
                <th scope="col">Kategori</th>
                <th scope="col">Tanggal Uji</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $index = 1;
            if (isset($kpsp) && count($kpsp) > 1) {
                foreach ($kpsp as $k) : ?>
                    <tr>
                        <td><?= $index; ?></td>
                        <td><?= $k['nama_bayi']; ?></td>
                        <td><?= $k['umur']; ?></td>
                        <td><?= $k['kategori']; ?></td>
                        <td><?= date("d M Y", strtotime($k['tanggal_uji'])); ?></td>
                        <td>
                            <a href="<?= site_url('/Ujikpsp/detail/' . $k['ujikpsp_id']); ?>">
                                <button class="btn btn-primary">Detail</button>
                            </a>
                        </td>
                    </tr>

                <?php
                    $index++;
                endforeach;
            } else { ?>
                <tr>
                    <td colspan="5" style="text-align: center">Belum ada data</td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->