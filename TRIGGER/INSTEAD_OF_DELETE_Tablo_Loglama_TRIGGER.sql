

DELETE FROM tbl_musteriler WHERE musteri_id_PK = 3

CREATE TRIGGER musteri_sil  ON tbl_musteriler
INSTEAD OF DELETE 
AS
BEGIN

DECLARE @musteriAdi varchar(100)
DECLARE @musteriSoyadi varchar(100)
DECLARE @musteriID int

SET @musteriAdi = (SELECT musteri_adi FROM deleted)
SET @musteriSoyadi = (SELECT musteri_soyadi FROM deleted)
SET @musteriID = (SELECT musteri_id_PK FROM deleted)

INSERT INTO tbl_musteriler_silinenler(silinen_musteri_adi,silinen_musteri_soyadi,islem,islem_tarihi) 
VALUES(@musteriAdi,@musteriSoyadi,'Silindi',getdate())
DELETE FROM tbl_musteriler WHERE musteri_id_PK = @musteriID

END