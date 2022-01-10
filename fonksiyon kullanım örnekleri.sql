

SELECT max(maas) FROM tbl_calisanlar -- en fazla verilen maaþý bulur.
SELECT min(maas) FROM tbl_calisanlar -- en az verilen maaþý bulur.
SELECT AVG(maas) FROM tbl_calisanlar -- Maaþlarýn ortalamasýný bulur.
SELECT SUM(maas) FROM tbl_calisanlar -- Maaþlarýn toplamýný bulur.
SELECT COUNT(maas) FROM tbl_calisanlar -- Maaþ Sütununun sayýsýný bulur.


SELECT max(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kadýn olanlarýn maksimum maaþýný bulur.
SELECT min(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kadýn olanlarýn minimum maaþýný bulur.
SELECT AVG(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kadýn olanlarýn ortalama maaþýný bulur.
SELECT SUM(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti Kadýn olanlarýn toplam maaþýný bulur.
SELECT COUNT(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti Kadýn olanlarýn MAAÞ sütun sayýsýný bulur.

SELECT max(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1 -- Cinsiyeti kadýn olanlarýn ve birimi 1 olanlarýn maksimum maaþýný bulur.
SELECT min(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1 -- Cinsiyeti kadýn olanlarýn ve birimi 1 olanlarýn minimum maaþýný bulur.
SELECT AVG(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti kadýn olanlarýn ve birimi 1 olanlarýn ortalama maaþýný bulur.
SELECT SUM(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti Kadýn olanlarýn ve birimi 1 olanlarýn toplam maaþýný bulur.
SELECT COUNT(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti Kadýn olanlarýn ve birimi 1 olanlarýn MAAÞ sütun sayýsýný bulur.



SELECT COUNT(maas) FROM tbl_calisanlar 
INNER JOIN tbl_birimler ON tbl_birimler.birim_id_PK = tbl_calisanlar.birim
WHERE birim_adi = 'Yazýlým' AND cinsiyet = 0 --birimi yazýlým olan ve cinsiyeti kadýn olanlarý bulur.