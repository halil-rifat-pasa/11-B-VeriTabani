--SELECT * FROM tbl_calisanlar,tbl_birimler WHERE birim_id_PK = birim
--SELECT adi,soyadi,birim_adi,mac_adresi,ekran_karti,islemci_modeli,ram_miktari FROM tbl_calisanlar,tbl_birimler,tbl_bilgisayarlar WHERE birim_id_PK = birim AND calisan_id_PK = calisan_id_FK

SELECT * FROM tbl_calisanlar 
WHERE birim = (SELECT birim_id_PK FROM tbl_birimler WHERE birim_adi = 'ArGe')

SELECT * FROM tbl_calisanlar WHERE birim = 3
