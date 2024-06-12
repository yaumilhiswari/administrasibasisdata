-- Nama : YAUMIL HISWARI AS
-- NIM : 22241046
-- MODUL 3

-- menggunakan database 
use mart_undikma;

-- ORDER BY 

-- mengambil nama produk dan qty urutkan berdasarakan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- mengambil  nama produk dan qty urutkan berdasarkan qty diikuti dengan nama_produk

SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty, nama_produk;

-- menampilkan nama produk, qty dan tgl transaksi 

SELECT * FROM tr_penjualan_dqlab ORDER BY qty,tgl_transaksi;

-- menampilkan semua kolom, ms penjualan

SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- mengambil nama produk dan qty urutkan berdasarkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC 

-- mengambil nama produk dan qty urutkan berdasarkan besar ke kecil, nama produk kecil ke besar
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty DESC, nama_produk ASC;

-- menampilkan nama produk, qty dan tgl transaksi 

SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- menggunakan hasil perhitungan pada ORDER BY 

SELECT nama_produk, qty, harga, qty*harga AS total_bayar 
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- pengurutan dengan ekspresi total harga
SELECT nama_produk,qty,harga,
diskon_persen, (diskon_persen/100)*harga AS diskon,
qty*(harga-(diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- mengambil nama produk, qty dari produk berawalan F urut berdasarkan qty besar ke kecil

SELECT nama_produk, qty FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

-- mengambil nama produk, qty dari produk berawalan F urut berdasarkan qty besar ke kecil
SELECT * FROM tr_penjualan_dqlab WHERE diskon_persen != 0 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab
WHERE harga >=100000 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab 
WHERE harga >=100000 OR nama_produk LIKE 'T%' ORDER BY harga DESC;


-- fungsi agregasi
-- hitung jumlah nilali qty dari seluruh row di tabel penjualan
SELECT sum(qty) AS total_qty FROM tr_penjualan_dqlab;

-- hitung jumlah seluruh rownpada pejualan
SELECT count(*) AS jumlah_row FROM tr_penjualan_dqlab;

-- hitung jumlah nilai qty gdan jumlah seluruh row pada tabel penjualan
SELECT sum(qty), count(*) FROM tr_penjualan_dqlab;

-- hitung rata rata nilai max, dan nilai min dari qty pada tabel penjualan
SELECT avg(qty), max(qty), min(qty) FROM tr_penjualan_dqlab; 

-- hitung jumlah nilai unik dari nama produ dari tabel penjualan
SELECT count(distinct nama_produk) FROM tr_penjualan_dqlab;

SELECT count(nama_produk) FROM tr_penjualan_dqlab tpd;

-- hitung jumlah nilai unik dan seluruh dari tabel penjualan
SELECT count(*), COUNT(distinct nama_produk) FROM tr_penjualan_dqlab;

-- menampilkan field nama produk dan fungsi agregasi dan maksimum qty dari tabel penjualan
SELECT nama_produk, max(qty) FROM tr_penjualan_dqlab;

-- GROUP BY
-- ambil hasil pengelompokan nilai kolom nama produk di tabel penjualan
SELECT nama_produk FROM tr_penjualan_dqlab
GROUP BY nama_produk;

SELECT nama_produk FROM tr_penjualan_dqlab;

-- ambil hasil pengelompokan dari nama produk dan qty di tabel tr penjualan
SELECT nama_produk, qty FROM tr_penjualan_dqlab
GROUP BY nama_produk, qty;

-- ambil hasul penjumlah qty dari pengelompokan nama produk terhadap semua row di tabeel penjualan
SELECT nama_produk, sum(qty) FROM tr_penjualan_dqlab 
GROUP BY nama_produk
ORDER BY sum(qty)ASC;

-- HAVING 
-- ambil jumlah qty > 2 dari hasil pengelompokan nama produk di tabel penjualan
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) > 2;

SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) > 4;

SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) = 9;

SELECT nama_produk,(harga * qty -(diskon_persen/100)*harga) AS nilai
FROM tr_penjualan_dqlab
ORDER BY nilai DESC;






