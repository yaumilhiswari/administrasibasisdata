-- Nama : Yaumil Hiswari AS
-- NIM : 22241046
-- MODUL 1

-- SELECT : Mengambil 1 kolom Table
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : mengambil lebih dari 1 kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : Mengambil semua kolom
SELECT * FROM ms_produk_dqlab;

-- LATIHAN
-- Ambil kode produk, nama produk, dari tabel produk


-- Ambil semua kolom dari tabel penjulan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS
-- PREFIX

-- Ambil nama produk dengan prefix
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Ambil nama produk dengan prefix database - tabel
SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- ALIAS 

-- Alias pada kolom dengan AS 
SELECT nama_produk as np FROM ms_produk_dqlab;
-- Alias pada kolom tanpa AS
SELECT nama_produk np FROM ms_produk_dqlab

-- Alias pada tabel dengan AS
SELECT nama_produk FROM ms_produk_dqlab AS mpd;
-- Alias pada tabel tanpa AS
SELECT nama_produk FROM ms_produk_dqlab mpd;

-- penggunaan Alias dan Prefix
SELECT mpd.nama_produk np FROM ms_produk_dqlab mpd;

-- mencari nama costumer dan alamatnya 
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- mencari harga dan produk
SELECT nama_produk, harga FROM tr_penjualan_dqlab;