--SELECT * FROM tbl_kitaplar 7 Numaralý Kitabý inceledik.
--SELECT * FROM tbl_yazarlar_kitaplar WHERE kitap_id_FK = 7
--SELECT * FROM tbl_kitap_kategoriler WHERE kitap_id_FK = 7
--SELECT * FROM tbl_kategori

/*
SELECT * FROM tbl_kitap_kategoriler WHERE 
kategori_id_FK = (SELECT kategori_id_PK FROM tbl_kategori WHERE kategori_adi = 'Aksiyon') 
OR	  kategori_id_FK = (SELECT kategori_id_PK FROM tbl_kategori WHERE kategori_adi = 'Macera')
OR	  kitap_id_FK =    (SELECT kitap_id_PK FROM tbl_kitaplar WHERE kitap_adi = 'Suç Ve Ceza') */




