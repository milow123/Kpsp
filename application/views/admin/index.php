<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="row">
        <div class="col-lg">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Id</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Nama Bayi</th>
                        <th scope="col">Tanggal lahir bayi Bayi</th>
                        <th scope="col">Email</th>
                        <th scope="col">Gambar</th>
                        <th scope="col">Password</th>
                        <th scope="col">Level id</th>
                        <th scope="col">Active</th>
                        <th scope="col">Waktu Pembuatan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($tampil_login as $tampil) : ?>
                        <tr>
                            <th scope="row"><?= $i ?></th>
                            <td><?= $tampil['id']; ?></td>
                            <td><?= $tampil['nama']; ?></td>
                            <td><?= $tampil['nama_bayi']; ?></td>
                            <td><?= date("d M Y", strtotime($tampil['tanggal_lahir'])) ?></td>
                            <td><?= $tampil['email'] ?></td>
                            <td> <img src="<?= base_url('asset/img/profile/') . $tampil['gambar'] ?>" width="100px" height="100px"></td>
                            <td> <?= $tampil['password'] ?></td>
                            <td> <?= $tampil['level_id'] ?></td>
                            <td> <?= $tampil['is_active'] ?></td>
                            <td><?= date("d M Y", $tampil['waktu_pembuatan']) ?></td>
                        </tr>
                        </form>
                </tbody>
                <?php $i++; ?>
            <?php endforeach; ?>
            </table>
        </div>

    </div>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->