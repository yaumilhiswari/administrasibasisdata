-- Nama : Yaumil Hiswari AS
-- NIM : 22241046
-- MODUL 2

-- NILAI LITERAL


-- menggunakan SELECT statement untuk nilai literal untuk angka
SELECT 77 AS nomor_punggung;

-- menampilkan nilai literal beberapa tipe data
SELECT 77 AS angka, true AS nilai_logika, 'DQLAB' as Teks;

-- NULL


-- menampilkan NULL
SELECT NULL AS kosong;


-- OPERATOR MATEMATIKA


-- kalkulasi ekspresi matematika
SELECT 
5%2 AS sisa_bagi,
5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

-- perhitungan matematika
SELECT 
 4 * 2 AS hasil_kali,
(4 * 8)%7 AS sisa_bagi_1,
(4 * 8) MOD 7 AS sisa_bagi_2,
(4 * 8) / 7 AS hasil_bagi,


SELECT * FROM tr_penjualan_dqlab;

-- EKSPRESI MATEMATIKA 
-- menampilkan hasil kali dari kolom qty dan harga
SELECT qty*harga AS total
FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN
-- Menampilkan hasil perbandingan nilai literal 
SELECT 
 5=5,
 5<>5,
 5<>4,
 5!=5,
 5!=4,
 5>4;
 
-- Operator perbandingan
-- menampilkan perbandingan nilai literal
SELECT 
1=true,
1=false,
5>=5,
5.2=5.20000,
NULL=1,
NULL=NULL;

-- OPERATOR PERBANDINGAN
-- menampilkan perbandingan literal
SELECT qty<=3 FROM tr_penjualan_dqlab;

-- FUNGSI
SELECT POW(3,2),ROUND(3.14),round(3.54),
round(3.155,1),round(3.155,2),floor(4.28),
floor(4.78),ceiling(4.39),ceiling(4.55);

-- fungsi tanggal
SELECT NOW(),
year(now()),
datediff(now(), '2004-06-25'),
day('2004-06-25');

-- fungsi tanggal
SELECT NOW(),
datediff('2022-07-23',NOW()),
year('2022-07-23'),
month('2022-07-23'),
day('2022-07-23'),
year(NOW());

-- menampilkan selisih transaksi terakhir dengan tanggal saat ini
SELECT 
datediff(now(),tgl_transaksi) AS selisih_hari
FROM
tr_penjualan_dqlab

-- WHERE statment 
-- Mengambil nama produk dan quantity yang quantitynya lebih dari 3
SELECT 
nama_produk, qty
FROM 
tr_penjualan_dqlab 
WHERE 
qty > 3;

-- Mengambil nama_produk, qty, yang qty > 3, dan transaksi bulan 6
SELECT 
nama_produk, qty
FROM
tr_penjualan_dqlab 
WHERE 
qty > 3 AND 
month (tgl_transaksi) 6;

-- mengambil nama_produk, qty dengan nama tertentu
SELECT 
nama_produk, qty
FROM
tr_penjualan_dqlab tpd 
WHERE 
nama_produk = "Flashdisk DQlab 32GB"; 

-- LIKE
-- Mengambil nama produk yang berawalan huruf "F"
SELECT nama_produk
FROM tr_penjualan_dqlab tpd 
WHERE nama_produk LIKE 'f%';

-- latihan mandiri dengan mencoba berbagai filtering dengan like untuk pola teks
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%t%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%' AND qty > 2;


