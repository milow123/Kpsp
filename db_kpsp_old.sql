-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 01:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kpsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kpsp`
--

CREATE TABLE `kpsp` (
  `id` int(11) NOT NULL,
  `bulan` int(2) NOT NULL,
  `koesioner` text NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpsp`
--

INSERT INTO `kpsp` (`id`, `bulan`, `koesioner`, `gambar`) VALUES
(1, 3, 'Pada waktu bayi telentang, apakah masing-masing lengan dan tungkai bergerak dengan mudah? Jawab TIDAK bila salah satu atau kedua tungkai atau lengan bayi bergerak tak terarah/tak terkendali.', ''),
(2, 3, 'Pada waktu bayi telentang apakah ia melihat dan menatap wajah anda?', ''),
(3, 3, 'Apakah bayi dapat mengeluarkan suara-suara lain (ngoceh), disamping menangis?', ''),
(4, 3, 'Pada waktu bayi telentang, apakah ia dapat mengikuti gerakan anda dengan menggerakkan kepalanya dari kanan/kiri ke tengah?', '3bulan_no4.jpg'),
(5, 3, 'Pada waktu bayi telentang, apakah. ia dapat mengikuti gerakan anda dengan menggerakkan kepalanya dari satu sisi hampir sampai pada sisi yang lain?', '3bulan_no5.jpg'),
(6, 3, 'Pada waktu anda mengajak bayi berbicara dan tersenyum,apakah ia tersenyum kembali kepada anda?', ''),
(7, 3, 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya?', '3bulan_no7.jpg'),
(8, 3, 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya sehingga membentuk sudut 45°?', '3bulan_no8.jpg'),
(9, 3, 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya dengan tegak?', '3bulan_no9.jpg'),
(10, 3, 'Apakah bayi suka tertawa keras walau tidak digelitik atau diraba-raba?', ''),
(11, 6, 'Pada waktu bayi telentang, apakah ia dapat mengikuti gerakan anda dengan menggerakkan kepala sepenuhnya dari satu sisi ke sisi yang lain?', '6bulan_no1.jpg'),
(12, 6, 'Dapatkah bayi mempertahankan posisi kepala dalam keadaan tegak dan stabil? Jawab TIDAK bila kepala bayi cenderung jatuh ke kanan/kiri atau ke dadanya', ''),
(13, 6, 'Sentuhkan pensil di punggung tangan atau ujung jari bayi. (jangan meletakkan di atas telapak tangan bayi). Apakah bayi dapat menggenggam pensil itu selama beberapa detik?', '6bulan_no3jpg'),
(14, 6, 'Ketika bayi telungkup di alas datar, apakah ia dapat mengangkat dada dengan kedua lengannya sebagai penyangga seperti pada gambar ?', '6bulan_no4.jpg'),
(15, 6, 'Pernahkah bayi mengeluarkan suara gembira bernada tinggi atau memekik tetapi bukan menangis?', ''),
(16, 6, 'Pernahkah bayi berbalik paling sedikit dua kali, dari telentang ke telungkup atau sebaliknya?', ''),
(17, 6, 'Pernahkah anda melihat bayi tersenyurn ketika melihat mainan yang lucu, gambar atau binatang peliharaan pada saat ia bermain sendiri?', ''),
(18, 6, 'Dapatkah bayi mengarahkan matanya pada benda kecil sebesar kacang, kismis atau uang logam? Jawab TIDAK jika ia tidak dapat mengarahkan matanya.Dapatkah bayi mengarahkan matanya pada benda kecil sebesar kacang, kismis atau uang logam? Jawab TIDAK jika ia tidak dapat mengarahkan matanya.', ''),
(19, 6, 'Dapatkah bayi meraih mainan yang diletakkan agak jauh namun masih berada dalam jangkauan tangannya?', ''),
(20, 6, 'Pada posisi bayi telentang, pegang kedua tangannya lalu tarik perlahan-lahan ke posisi clucluk. Dapatkah bayi mempertahankan lehernya secara kaku seperti gambar di sebelah kiri ? Jawab TIDAK bila kepala bayi jatuh kembali seperti gambar sebelah kanan.', '6bulan_no10.jpg'),
(21, 9, 'Pada posisi bayi telentang, pegang kedua tangannya lalu tarik perlahan-lahan ke posisi duduk. Dapatkah bayi mempertahankan lehernya secara kaku seperti gambar disebelah kiri ? Jawab TIDAK bila kepala bayi jatuh kembali seperti gambar sebelah kanan.', '9bulan_no1.jpg'),
(22, 9, 'Pernahkah anda melihat bayi memindahkan mainan atau kue kering dari satu tangan ke tangan yang lain? Benda-benda panjang seperti sendok atau kerincingan bertangkai tidak ikut dinilai.', ''),
(23, 9, 'Tarik perhatian bayi dengan memperlihatkan selendang, sapu tangan atau serbet, kemudian jatuhkan ke lantai. Apakah bayi mencoba mencarinya? Misalnya mencari di bawah meja atau di belakang kursi?', ''),
(24, 9, 'Apakah bayi dapat memungut dua benda seperti mainan/kue kering, dan masing-masing tangan memegang satu benda pada saat yang sama? Jawab TIDAK bila bayi tidak pernah melakukan perbuatan ini.', ''),
(25, 9, 'Jika anda mengangkat bayi melalui ketiaknya ke posisi berdiri, dapatkah ia menyangga sebagian berat badan dengan kedua kakinya? Jawab YA bila ia mencoba berdiri dan sebagian berat badan tertumpu pada kedua kakinya.', ''),
(26, 9, 'Dapatkah bayi memungut dengan tangannya benda-benda kecil seperti kismis, kacang-kacangan, potongan biskuit, dengan gerakan miring atau menggerapai seperti gambar ?', '9bulan_no6.jpg'),
(27, 9, 'Tanpa disangga oleh bantal, kursi atau dinding, dapatkah bayi duduk sendiri selama 60 detik?', '9bulan_no7.jpg'),
(28, 9, 'Apakah bayi dapat makan kue kering sendiri?', ''),
(29, 9, 'Pada waktu bayi bermain sendiri dan anda diam-diam datang berdiri di belakangnya, apakah ia menengok ke belakang seperti mendengar kedatangan anda? Suara keras tidak ikut dihitung. Jawab YA hanya jika anda melihat reaksinya terhadap suara yang perlahan atau bisikan.', ''),
(30, 9, 'Letakkan suatu mainan yang dinginkannya di luar jangkauan bayi, apakah ia mencoba mendapatkannya dengan mengulurkan lengan atau badannya?', ''),
(31, 12, 'Jika anda bersembunyi di belakang sesuatu/di pojok, kemudian muncul dan menghilang secara berulang-ulang di hadapan anak, apakah ia mencari anda atau mengharapkan anda muncul kembali?', ''),
(32, 12, 'Letakkan pensil di telapak tangan bayi. Coba ambil pensil tersebut dengan perlahan-lahan. Sulitkah anda mendapatkan pensil itu kembali?', ''),
(33, 12, 'Apakah anak dapat berdiri selama 30 detik atau lebih dengan berpegangan pada kursi/meja?', ''),
(34, 12, 'Apakah anak dapat mengatakan 2 suku kata yang sama, misalnya: “ma-ma”, “da-da” atau “pa-pa”. Jawab YA bila ia mengeluarkan salah—satu suara tadi.', ''),
(35, 12, 'Apakah anak dapat mengangkat badannya ke posisi berdiri tanpa bantuan anda?', ''),
(36, 12, 'Apakah anak dapat membedakan anda dengan orang yang belum ia kenal? la akan menunjukkan sikap malu-malu atau ragu-ragu pada saat permulaan bertemu dengan orang yang belum dikenalnya.', ''),
(37, 12, 'Apakah anak dapat mengambil Benda kecil seperti kacang atau kismis, dengan meremas di antara ibu jari dan jarinya seperti pada gambar?', '12bulan_no7.jpg'),
(38, 12, 'Apakah anak dapat duduk sendiri tanpa bantuan?', ''),
(39, 12, 'Sebut 2-3 kata yang dapat ditiru oleh anak (tidak perlu kata-kata yang lengkap). Apakah ia mencoba meniru menyebutkan kata-kata tadi ?', ''),
(40, 12, 'Tanpa bantuan, apakah anak dapat mempertemukan dua kubus kecil yang ia pegang? Kerincingan bertangkai dan tutup panel tidak ikut dinilai.', ''),
(44, 15, 'Tanpa bantuan, apakah anak dapat mempertemukan dua kubus kecil yang ia pegang? Kerincingan bertangkai dan tutup, panci tidak ikut dinilai', ''),
(45, 15, 'Apakah anak dapat jalan sendiri atau jalan dengan berpegangan?', ''),
(46, 15, 'Tanpa bantuan, apakah anak dapat bertepuk tangan atau melambai-lambai? Jawab TIDAK bila ia membutuh kemandirian kaq bantuan.', ''),
(47, 15, 'Apakah anak dapat mengatakan “papa” ketika ia memanggil/melihat ayahnya, atau mengatakan “mama” jika memanggil/melihat ibunya? Jawab YA bila anak mengatakan salah satu diantaranya.', ''),
(48, 15, 'Dapatkah anak berdiri sendiri tanpa berpegangan selama kira-kira 5 detik?', ''),
(49, 15, 'Dapatkan anak berdiri sendiri tanpa berpegangan selama 30 detik atau lebih? Tanpa berpegangan atau menyentuh lantai, apakah anak dapat membungkuk untuk memungut mainan di lantai dan kemudian berdiri kembali?', ''),
(50, 15, 'Apakah anak dapat menunjukkan apa yang diinginkannya tanpa menangis atau merengek? Jawab YA bila ia menunjuk, menarik atau mengeluarkan suara yang menyenangkan', ''),
(51, 15, 'Apakah anak dapat berjalan di sepanjang ruangan tanpa jatuh atau terhuyung-huyung?', ''),
(52, 15, 'Apakah anak dapat mengambil benda kecil seperti kacang, kismis, atau potongan biskuit dengan menggunakan ibu seperti pada gambar ini', '15bulan_no9.jpg'),
(54, 18, 'Tanpa bantuan, apakah anak dapat bertepuk tangan atau melambai-lambai? Jawab TIDAK bila ia membutuhkan bantuan.', ''),
(55, 18, 'Apakah anak dapat mengatakan “papa” ketika ia memanggil/melihat ayahnya, atau mengatakan “mama” jika memanggil/melihat ibunya?', ''),
(56, 18, 'Apakah anak dapat berdiri sendiri tanpa berpegangan selama kira-kira 5 detik?', ''),
(57, 18, 'Apakah anak dapat berdiri sendiri tanpa berpegangan selama 30 detik atau lebih?', ''),
(58, 18, 'Tanpa berpegangan atau menyentuh lantai, apakah anak dapat membungkuk untuk memungut mainan di lantai clan kemudian berdiri kembali?', ''),
(59, 18, 'Apakah anak dapat menunjukkan apa yang diinginkannya tanpa menangis atau merengek? Jawab YA bila ia menunjuk, menarik atau mengeluarkan suara yang menyenangkan.', ''),
(60, 18, 'Apakah anak dapat berjalan di sepanjang ruangan tanpa jatuh atau terhuyung-huyung?', ''),
(61, 18, 'Apakah anak anak dapat mengambil benda kecil seperti kacang, kismis, atau potongan biskuit dengan menggunakan ibu jari dan jari telunjuk seperti pada gambar ?', '18bulan_no8.jpg'),
(62, 18, 'Jika anda menggelindingkan bola ke anak, apakah ia menggelindingkan/melemparkan kembali bola pada anda?', ''),
(63, 18, 'Apakah anak dapat memegang sendiri cangkir/gelas dan minum dari tempat tersebut tanpa tumpah?', ''),
(64, 21, 'Tanpa berpegangan atau menyentuh lantai, apakah anak dapat membungkuk untuk memungut mainan di lantai dan kemudian berdiri kembali?', ''),
(65, 21, 'Apakah anak dapat menunjukkan apa yang diinginkannya tanpa menangis atau merengek? Jawab YA bila ia menunjuk, menarik atau mengeluarkan suara yang menyenangkan.', ''),
(66, 21, 'Apakah anak dapat berjalan di sepanjang ruangan tanpa jatuh atau terhuyung-huyung?', ''),
(67, 21, 'Apakah anak dapat mengambil benda kecil seperti kacang, kismis, atau potongan biskuit dengan menggunakan ibu jari clan jari telunjuk seperti pada gambar ?', '21bulan_no4.jpg'),
(68, 21, 'Jika anda menggelindingkan bola ke anak, apakah ia menggelindingkan/melemparkan kembali bola pada anda?', ''),
(69, 21, 'Apakah anak dapat memegang sendiri cangkir/gelas clan minum dari tempat tersebut tanpa tumpah?', ''),
(70, 21, 'Jika anda sedang melakukan pekerjaan rumah tangga, apakah anak meniru apa yang anda lakukan?', ''),
(71, 21, 'Apakah anak dapat meletakkan satu kubus di atas Gerak halus Ya Tida kubus yang lain tanpa menjatuhkan kubus itu? Kubus yang digunakan ukuran 2.5-5.0 cm', ''),
(72, 21, 'Apakah anak dapat mengucapkan paling sedikit 3 kata yang mempunyai arti selain “papa” dan “mama”?.', ''),
(73, 21, 'Apakah anak dapat berjalan mundur 5 langkah atau lebih tanpa kehilangan keseimbangan? (Anda mungkin dapat melihatnya ketika anak menarik mainannya)', ''),
(74, 24, 'Jika anda sedang melakukan pekerjaan rumah tangga, apakah anak meniru apa yang anda lakukan?', ''),
(75, 24, 'Apakah anak dapat meletakkan 1 buah kubus di atas kubus yang lain tanpa menjatuhkan kubus itu? Kubus yang digunakan ukuran 2.5 — 5 cm.', ''),
(76, 24, 'Apakah anak dapat mengucapkan paling sedikit 3 kata yang mempunyai arti selain \"papa\" clan \"mama\"?', ''),
(77, 24, 'Apakah anak dapat berjalan mundur 5 langkah atau lebih tanpa kehilangan keseimbangan?\r\n(Anda mungkin dapat melihatnya ketika anak menarik mainannya).', ''),
(78, 24, 'Dapatkah anak melepas pakaiannya seperti: baju, rok, atau celananya? (topi dan kaos kaki tidak ikut dinilai).', ''),
(79, 24, 'Dapatkah anak berjalan naik tangga sendiri? Jawab YA jika ia naik tangga dengan posisi tegak atau berpegangan pada dinding atau pegangan tangga. Jawab TIDAK jika ia naik tangga dengan merangkak atau anda tidak membolehkan anak naik tangga atau anak harus berpegangan pada seseorang.', ''),
(80, 24, 'Tanpa bimbingan, petunjuk atau bantuan anda, dapatkah anak menunjuk dengan benar paling sedikit satu bagian badannya (rambut, mata, hidung, mulut, atau bagian badan yang lain)?', ''),
(81, 24, 'Dapatkah anak makan nasi sendiri tanpa banyak tumpah?', ''),
(82, 24, 'Dapatkah anak membantu memungut mainannya sendiri atau membantu mengangkat piring jika diminta?', ''),
(83, 24, 'Dapatkah anak menendang bola kecil (sebesar bola tenis) ke depan tanpa berpegangan pada apapun? Mendorong tidak ikut dinilai.', ''),
(84, 30, 'Dapatkah anak melepas pakaiannya seperti: baju, rok, Sosialisasi & atau celananya? (topi dan kaos kaki tidak ikut dinilai)', ''),
(85, 30, 'Dapatkah anak berjalan naik tangga sendiri? Jawab YA jika ia naik tangga dengan posisi tegak atau berpegangan pada Binding atau pegangan tangga. Jawab TIDAK jika ia naik tangga dengan merangkak atau anda tidak membolehkan anak naik tangga atau anak harus berpegangan pada seseorang.', ''),
(86, 30, 'Tanpa bimbingan, petunjuk atau bantuan anda, dapatkah anak menunjuk dengan benar paling seclikit satu bagian badannya (rambut, mata, hidung, mulut, atau bagian badan yang lain)?', ''),
(87, 30, 'Dapatkah anak makan nasi sendiri tanpa banyak tumpah?', ''),
(88, 30, 'Dapatkah anak membantu memungut mainannya sendiri atau membantu mengangkat piring jika diminta?', ''),
(89, 30, 'Dapatkah anak menendang bola kecil (sebesar bola tenis) Gerak kasar ke depan tanpa berpegangan pada apapun? Mendorong tidak ikut dinilai.', ''),
(90, 30, 'Bila diberi pensil, apakah anak mencoret-coret kertas tanpa bantuan/petunjuk?', ''),
(91, 30, 'Dapatkah anak meletakkan 4 buah kubus satu persatu di atas kubus yang lain tanpa menjatuhkan kubus itu? Kubus yang digunakan ukuran 2.5 – 5 cm.', ''),
(92, 30, 'Dapatkah anak menggunakan 2 kata pada saat berbicara seperti “minta minum”, “mau tidur”? “Terimakasih” dan “Dadag” tidak ikut dinilai.', ''),
(93, 30, 'Apakah anak dapat menyebut 2 diantara gambar-gambar ini tanpa bantuan?', '30bulan_no10.jpg'),
(94, 36, 'Bila diberi pensil, apakah anak mencoret-coret kertas tanpa bantuan/petunjuk?', ''),
(95, 36, 'Dapatkah anak meletakkan 4 buah kubus satu persatu di atas kubus yang lain tanpa menjatuhkan kubus itu? Kubus yang digunakan ukuran 2.5 – 5 cm.', ''),
(96, 36, 'Dapatkah anak menggunakan 2 kata pada saat berbicara seperti “minta minum”; “mau tidur”? “Terimakasih” dan “Dadag” tidak ikut dinilai.', ''),
(97, 36, 'Apakah anak dapat menyebut 2 diantara gambar-gambar ini tanpa bantuan?', '36bulan_no4.jpg'),
(98, 36, 'Dapatkah anak melempar bola lurus ke arah perut atau dada anda dari jarak 1,5 meter?', ''),
(99, 36, 'Ikuti perintah ini dengan seksama. Jangan memberi isyarat dengan telunjuk atau mata pada saat memberikan perintah berikut ini: “Letakkan kertas ini di lantai”. “Letakkan kertas ini di kursi”. “Berikan kertas ini kepada ibu”. Dapatkah anak melaksanakan ketiga perintah tadi?', ''),
(100, 36, 'Buat garis lurus ke bawah sepanjang sekurangkurangnya 2.5 cm. Suruh anak menggambar garis lain di samping garis tsb.', '36bulan_no7.jpg'),
(101, 36, 'Letakkan selembar kertas seukuran buku di lantai. Apakah anak dapat melompati bagian lebar kertas dengan mengangkat kedua kakinya secara bersamaan tanpa didahului lari?', ''),
(102, 36, 'Dapatkah anak mengenakan sepatunya sendiri?', ''),
(103, 36, 'Dapatkah anak mengayuh sepeda roda tiga sejauh sedikitnya 3 meter?', ''),
(104, 42, 'Dapatkah anak mengenakan sepatunya sendiri?', ''),
(105, 42, 'Dapatkah anak mengayuh sepeda rods tiga sejauh sedikitnya 3 meter?', ''),
(106, 42, 'Setelah makan, apakah anak mencuci dan mengeringkan tangannya dengan balk sehingga anda tidak perlu mengulanginya?', ''),
(107, 42, 'Suruh anak berdiri satu kaki tanpa berpegangan. Jika perlu tunjukkan caranya dan beri anak anda kesempatan melakukannya 3 kali. Dapatkah ia mempertahankan keseimbangan dalam waktu 2 detik atau lebih?', ''),
(108, 42, 'Letakkan selembar kertas seukuran buku ini di lantai. Apakah anak dapat melompati panjang kertas ini dengan mengangkat kedua kakinya secara bersamaan tanpa didahului lari?', ''),
(109, 42, 'Jangan membantu anak dan jangan menyebut lingkaran. Suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia. Dapatkah anak menggambar lingkaran?', '42bulan_no6.jpg'),
(110, 42, 'Dapatkah anak meletakkan 8 buah kubus satu persatu di atas yang lain tanpa menjatuhkan kubus tersebut? Kubus yang digunakan ukuran 2.5 – 5 cm.', ''),
(111, 42, 'Apakah anak dapat bermain petak umpet, ular naga atau permainan lain dimana ia ikut bermain dan mengikuti aturan bermain?', ''),
(112, 42, 'Dapatkah anak mengenakan celana panjang, kemeja, baju atau kaos kaki tanpa di bantu? (Tidak termasuk kemandirian memasang kancing, gesper atau ikat pinggang)', ''),
(114, 48, 'Dapatkah anak mengayuh sepeda roda tiga sejauh sedikitnya 3 meter?', ''),
(115, 48, 'Setelah makan, apakah anak mencuci dan mengeringkan tangannya dengan baik sehingga anda tidak perlu mengulanginya?', ''),
(116, 48, 'Suruh anak berdiri satu kaki tanpa berpegangan. Jika perlu tunjukkan caranya dan beri anak anda kesempatan melakukannya 3 kali. Dapatkah ia mempertahankan keseimbangan dalam waktu 2 detik atau lebih?', ''),
(117, 48, 'Letakkan selembar kertas seukuran buku ini di lantai. Apakah anak dapat melompati panjang kertas ini dengan mengangkat kedua kakinya secara bersamaan tanpa didahului lari?', ''),
(118, 48, 'Jangan membantu anak dan jangan menyebut lingkaran. Suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia. Dapatkah anak menggambar lingkaran?', '48bulan_no5.jpg'),
(119, 48, 'Dapatkah anak meletakkan 8 buah kubus satu persatu di atas yang lain tanpa menjatuhkan kubus tersebut? Kubus yang digunakan ukuran 2.5 – 5 cm.', ''),
(120, 48, 'Apakah anak dapat bermain petak umpet, ular naga atau permainan lain dimana ia ikut bermain dan mengikuti aturan bermain?', ''),
(121, 48, 'Dapatkah anak mengenakan celana panjang, kemeja, baju atau kaos kaki tanpa di bantu? (Tidak termasuk memasang kancing, gesper atau ikat pinggang)', ''),
(122, 48, 'Dapatkah anak menyebutkan nama lengkapnya tanpa dibantu? Jawab TIDAK jika ia hanya menyebutkan sebagian namanya atau ucapannya sulit dimengerti.', ''),
(124, 54, 'Dapatkah anak meletakkan 8 buah kubus satu persatu di atas yang lain tanpa menjatuhkan kubus tersebut? Kubus yang digunakan ukuran 2-5 – 5 cm.', ''),
(125, 54, 'Apakah anak dapat bermain petak umpet, ular naga atau permainan lain dimana ia ikut bermain dan mengikuti aturan bermain?', ''),
(126, 54, 'Dapatkah anak mengenakan celana panjang, kemeja, baju atau kaos kaki tanpa di bantu? (Tidak termasuk memasang kancing, gesper atau ikat pinggang)', ''),
(127, 54, 'Dapatkah anak menyebutkan nama lengkapnya tanpa dibantu? Jawab TIDAK jika ia hanya menyebut sebagian namanya atau ucapannya sulit dimengerti.', ''),
(128, 54, 'Isi titik-titik di bawah ini dengan jawaban anak. Jangan membantu kecuali mengulangi pertanyaan. \"Apa yang kamu lakukan jika kamu kedinginan?\" \"Apa yang kamu lakukan jika kamu lapar?\" \"Apa yang kamu lakukan jika kamu lelah?\" Jawab YA biia anak merjawab ke 3 pertanyaan tadi dengan benar, bukan dengan gerakan atau isyarat. Jika kedinginan, jawaban yang benar adalah \"menggigil\" ,\"pakai mantel’ atau \"masuk kedalam rumah’. Jika lapar, jawaban yang benar adalah \"makan\" Jika lelah, jawaban yang benar adalah \"mengantuk\", \"tidur\", \"berbaring/tidur-tiduran\", \"istirahat\" atau \"diam sejenak\"', ''),
(129, 54, 'Apakah anak dapat mengancingkan bajunya atau pakaian boneka?', ''),
(130, 54, 'Suruh anak berdiri satu kaki tanpa berpegangan. Jika perlu tunjukkan caranya dan beri anak ands kesempatan melakukannya 3 kali. Dapatkah ia mempertahankan keseimbangan dalam waktu 6 detik atau lebih?', ''),
(131, 54, 'Jangan mengoreksi/membantu anak. Jangan menyebut kata \"lebih panjang\".\r\nPerlihatkan gambar kedua garis ini pada anak. Tanyakan: \"Mana garis yang lebih panjang?\" Minta anak menunjuk garis yang lebih panjang.\r\n19\r\nSetelah anak menunjuk, putar lembar ini dan ulangi pertanyaan tersebut. Setelah anak menunjuk, putar lembar ini lagi dan ulangi pertanyaan tadi. Apakah anak dapat menunjuk garis yang lebih panjang sebanyak 3 kali dengan benar?', '54bulan_no8.jpg'),
(132, 54, 'Jangan membantu anak dan jangan memberitahu nama gambar ini, suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia. Berikan 3 kali kesempatan. Apakah anak dapat menggambar seperti contoh ini?', '54bulan_no9.jpg'),
(133, 54, 'Ikuti perintah ini dengan seksama. Jangan memberi isyarat dengan telunjuk atau mats pads saat memberikan perintah berikut ini: \"Letakkan kertas ini di atas lantai\". \"Letakkan kertas ini di bawah kursi\". \"Letakkan kertas ini di depan kamu\" \"Letakkan kertas ini di belakang kamu\" Jawab YA hanya jika anak mengerti arti \"di atas\", \"di bawah\", \"di depan\" dan \"di belakang”', ''),
(134, 60, 'Isi titik-titik di bawah ini dengan jawaban anak. Jangan membantu kecuali mengulangi pertanyaan. “Apa yang kamu lakukan jika kamu kedinginan?” “Apa yang kamu lakukan jika kamu lapar?” “Apa yang kamu lakukan jika kamu lelah?” Jawab YA biia anak merjawab ke 3 pertanyaan tadi dengan benar, bukan dengan gerakan atau isyarat. Jika kedinginan, jawaban yang benar adalah “menggigil” ,”pakai mantel’ atau “masuk kedalam rumah’. Jika lapar, jawaban yang benar adalah “makan” Jika lelah, jawaban yang benar adalah “mengantuk”, “tidur”, “berbaring/tidur-tiduran”, “istirahat” atau “diam sejenak”', ''),
(135, 60, 'Apakah anak dapat mengancingkan bajunya atau pakaian boneka?', ''),
(136, 60, 'Suruh anak berdiri satu kaki tanpa berpegangan. Jika perlu tunjukkan caranya dan beri anak ands kesempatan melakukannya 3 kali. Dapatkah ia mempertahankan keseimbangan dalam waktu 6 detik atau lebih?', ''),
(137, 60, 'Jangan mengoreksi/membantu anak. Jangan menyebut kata “lebih panjang”. Perlihatkan gambar kedua garis ini pada anak. Tanyakan: “Mana garis yang lebih panjang?” Minta anak menunjuk garis yang lebih panjang. Setelah anak menunjuk, putar lembar ini dan ulangi pertanyaan tersebut.\r\n20\r\nSetelah anak menunjuk, putar lembar ini lagi dan ulangi pertanyaan tadi. Apakah anak dapat menunjuk garis yang lebih panjang sebanyak 3 kali dengan benar?', ''),
(138, 60, 'Jangan membantu anak dan jangan memberitahu nama gambar ini, suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia. Berikan 3 kali kesempatan. Apakah anak dapat menggambar seperti contoh ini?', '60bulan_no5.jpg'),
(139, 60, 'Ikuti perintah ini dengan seksama. Jangan memberi isyarat dengan telunjuk atau mats pads saat memberikan perintah berikut ini: “Letakkan kertas ini di atas lantai”. “Letakkan kertas ini di bawah kursi”. “Letakkan kertas ini di depan kamu” “Letakkan kertas ini di belakang kamu” Jawab YA hanya jika anak mengerti arti “di atas”, “di bawah”, “di depan” dan “di belakang”', ''),
(140, 60, 'Apakah anak bereaksi dengan tenang dan tidak rewel (tanpa menangis atau menggelayut pada anda) pada saat anda meninqgalkannya?', ''),
(141, 60, 'Jangan menunjuk, membantu atau membetulkan, katakan pada anak : “Tunjukkan segi empat merah” “Tunjukkan segi empat kuning” ‘Tunjukkan segi empat biru” “Tunjukkan segi empat hijau” Dapatkah anak menunjuk keempat warna itu dengan benar?', '60bulan_no8.jpg'),
(142, 60, 'Suruh anak melompat dengan satu kaki beberapa kali tanpa berpegangan (lompatan dengan dua kaki tidak ikut dinilai). Apakah ia dapat melompat 2-3 kali dengan satu kaki?', ''),
(143, 60, 'Dapatkah anak sepenuhnya berpakaian sendiri tanpa bantuan?', ''),
(144, 66, 'Jangan membantu anak dan jangan memberitahu nama gambar ini, suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia. Berikan 3 kali kesempatan. Apakah anak dapat menggambar seperti contoh ini?', '66bulan_no1.jpg'),
(145, 66, 'Ikuti perintah ini dengan seksama. Jangan memberi isyarat dengan telunjuk atau mats pads saat memberikan perintah berikut ini: \"Letakkan kertas ini di atas lantai\". \"Letakkan kertas ini di bawah kursi\". \"Letakkan kertas ini di depan kamu\" \"Letakkan kertas ini di belakang kamu\" Jawab YA hanya jika anak mengerti arti \"di atas\", \"di bawah\", \"di depan\" dan \"di belakang”', ''),
(146, 66, 'Apakah anak bereaksi dengan tenang dan tidak rewel (tanpa menangis atau menggelayut pada anda) pada saat anda meninqgalkannya?', ''),
(147, 66, 'Jangan menunjuk, membantu atau membetulkan, katakan pada anak : \"Tunjukkan segi empat merah\" \"Tunjukkan segi empat kuning\" ‘Tunjukkan segi empat biru” \"Tunjukkan segi empat hijau\" Dapatkah anak menunjuk keempat warna itu dengan benar?', '66bulan_no4.jpg'),
(148, 66, 'Suruh anak melompat dengan satu kaki beberapa kali tanpa berpegangan (lompatan dengan dua kaki tidak ikut dinilai). Apakah ia dapat melompat 2-3 kali dengan satu kaki?', ''),
(149, 66, 'Dapatkah anak sepenuhnya berpakaian sendiri tanpa bantuan?', ''),
(150, 66, 'Suruh anak menggambar di tempat kosong yang tersedia. Katakan padanya: \"Buatlah gambar orang\". Jangan memberi perintah lebih dari itu. Jangan bertanya/ mengingatkan anak bila ada bagian yang belum tergambar. Dalam memberi nilai, hitunglah berapa bagian tubuh yang tergambar. Untuk bagian tubuh yang berpasangan seperti mata, telinga, lengan dan kaki, setiap pasang dinilai satu bagian. Dapatkah anak menggambar sedikitnya 3 bagian tubuh?', ''),
(151, 66, 'Pada gambar orang yang dibuat pada nomor 7, dapatkah anak menggambar sedikitnya 6 bagian tubuh?', ''),
(152, 66, 'Tulis apa yang dikatakan anak pada kalimat-kalimat yang belum selesai ini, jangan membantu kecuali mengulang pertanyaan: \"Jika kuda besar maka tikus ……… \"Jika api panas maka es ……… \"Jika ibu seorang wanita maka ayah seorang ……… Apakah anak menjawab dengan benar (tikus kecil, es dingin, ayah seorang pria) ?', ''),
(153, 66, 'Apakah anak dapat menangkap bola kecil sebesar bola tenis/bola kasti hanya dengan menggunakan kedua tangannya? (Bola besar tidak ikut dinilai).', ''),
(154, 72, 'Jangan menunjuk, membantu atau membetulkan, katakan pada anak :\r\n“Tunjukkan segi empat merah” “Tunjukkan segi empat kuning” “Tunjukkan segi empat biru”\r\n23\r\n“Tunjukkan segi empat hijau”\r\nDapatkah anak menunjuk keempat warna itu dengan benar?', '72bulan_no1.jpg'),
(155, 72, 'Suruh anak melompat dengan satu kaki beberapa kali tanpa berpegangan (lompatan dengan dua kaki tidak ikut dinilai). Apakah ia dapat melompat 2-3 kali dengan satu kaki?', ''),
(156, 72, 'Dapatkah anak sepenuhnya berpakaian sendiri tanpa bantuan?', ''),
(157, 72, 'Suruh anak menggambar di tempat kosong yang tersedia. Katakan padanya: \"Buatlah gambar orang\". Jangan memberi perintah lebih dari itu. Jangan bertanya/ mengingatkan anak bila ada bagian yang belum tergambar. Dalam memberi nilai, hitunglah berapa bagian tubuh yang tergambar. Untuk bagian tubuh yang berpasangan seperti mata, telinga, lengan dan kaki, setiap pasang dinilai satu bagian. Dapatkah anak menggambar sedikitnya 3 bagian tubuh?', ''),
(158, 72, 'Pada gambar orang yang dibuat pads nomor 7, dapatkah anak menggambar sedikitnya 6 bagian tubuh?', ''),
(159, 72, 'Tulis apa yang dikatakan anak pada kalimat-kalimat yang belum selesai ini, jangan membantu kecuali mengulang pertanyaan: \"Jika kuda besar maka tikus \"Jika api panas maka es \"Jika ibu seorang wanita maka ayah seorang Apakah anak menjawab dengan benar (tikus kecil, es dingin, ayah seorang pria) ?', ''),
(160, 72, 'Apakah anak dapat menangkap bola kecil sebesar bola tenis/bola kasti hanya dengan menggunakan kedua tangannya? (Bola besar tidak ikut dinilai).', ''),
(161, 72, 'Suruh anak berdiri satu kaki tanpa berpegangan. Jika perlu tunjukkan caranya clan beri anak ands kesempatan melakukannya 3 kali. Dapatkah ia mempertahankan keseimbangan dalam waktu 11 detik atau lebih?', ''),
(162, 72, 'Jangan membantu anak clan jangan memberitahu nama gambar ini, Suruh anak menggambar seperti contoh ini di kertas kosong yang tersedia- Berikan 3 kali kesempatan. Apakah anak dapat menggambar seperti contoh ini?', '72bulan_no9.jpg'),
(163, 72, 'lsi titik-titik di bawah ini dengan jawaban anak. Jangan membantu kecuali mengulangi pertanyaan sampai 3 kali bila anak menanyakannya. \"Sendok dibuat dari apa?\" \"Sepatu dibuat dari apa?\" \"Pintu dibuat dari apa?\" Apakah anak dapat menjawab ke 3 pertanyaan di atas dengan benar? Sendok dibuat dari besi, baja, plastik, kayu. Sepatu dibuat dari kulit, karet, kain, plastik, kayu. Pintu dibuat dari kayu, besi, kaca.', '');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `nama_bayi` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `gambar` varchar(128) CHARACTER SET utf8 NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 NOT NULL,
  `level_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `waktu_pembuatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `nama`, `nama_bayi`, `tanggal_lahir`, `email`, `gambar`, `password`, `level_id`, `is_active`, `waktu_pembuatan`) VALUES
(14, 'Haryo', '', '0000-00-00', 'ryukken12@gmail.com', 'default.jpg', '$2y$10$fNOX6FvcNGAMr0vUrsuv5uXsapwOQiUsve00KBzVM0vQUCecKEf/O', 1, 1, 1623664006),
(18, 'Udin', 'Nidun', '2019-08-18', 'prabu_papua@yahoo.com', 'default.jpg', '$2y$10$O4EQNkb6ZSNod70dysYqUuIZMgj7osSYaC5DVF9vI9xbFLbPceOrq', 2, 1, 1623968926),
(19, 'Prabu', 'Baby', '2020-12-12', 'prabu@gmail.com', 'default.jpg', '$2y$10$K6pUHPtPg3MgIMUwwYLsOewAhBTjiR.TFlfYwEPlnKiNWFwiRB6dW', 2, 1, 1624295276);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `level_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3),
(8, 2, 7),
(9, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'menu'),
(7, 'kpsp'),
(21, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `nama_menu` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `nama_menu`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Home', 'user', 'fas fa-fw fa-home', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(9, 1, 'Role', 'admin/role', 'fas fa fw fa-user-tie', 1),
(10, 2, 'Ubah Password', 'user/ubahpassword', 'fas fa fw fa-key', 1),
(12, 7, 'Uji KPSP', 'ujikpsp', 'fas fa fw fa-baby', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kpsp`
--
ALTER TABLE `kpsp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kpsp`
--
ALTER TABLE `kpsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
