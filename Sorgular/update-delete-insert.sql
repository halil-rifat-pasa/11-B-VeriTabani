CREATE TABLE test(
id int identity primary key,
ad varchar(400),
soyad varchar(400),
cinsiyet bit default 1, -- 1 kadýn, 0 erkek
maas varchar(4000) default 3201

)


INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Hasan','Kaya',0,'4000')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Ýrem','Tunç',1,'5000')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Beyza','Þahin',1,'4500')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Büþra','Ekinci',1,'6200')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Zehra','Yýlmaz',1,'5902')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Yaren','Çakýr',1,'3200')
INSERT INTO test(ad,soyad) VALUES('Sena','Özdil')
INSERT INTO test(ad,soyad) VALUES('Sena','Ölmez')


DELETE FROM test WHERE id = 10
DELETE FROM test WHERE ad = 'Büþra'
DELETE FROM test WHERE ad = 'Sena'
DELETE FROM test WHERE soyad = 'Yýlmaz'
DELETE FROM test WHERE ad = 'Beyza' AND soyad = 'Þahin'
DELETE FROM test WHERE ad = 'Sena' OR soyad = 'Ekinci'
DELETE FROM test WHERE id < 18
DELETE FROM test WHERE id < 18 OR ad = 'Ýrem'
DELETE FROM test WHERE id > 19  AND id< 22
DELETE FROM test WHERE ad = 'Beyza' OR soyad = 'Çakýr'

UPDATE test SET ad = 'Aslý' WHERE ad = 'Sena' AND soyad = 'Ölmez'
UPDATE test SET ad = 'Ýrem', soyad ='Öztürk' WHERE id=7
UPDATE test SET maas = '4800' WHERE cinsiyet = 1
UPDATE test SET maas = '1500' WHERE cinsiyet = 0
UPDATE test SET maas = '2700' WHERE maas = '4800'
UPDATE test SET maas = '4800' WHERE id < 5
UPDATE test SET maas = '4600' WHERE id > 5 AND id<9
UPDATE test SET maas = '3200' WHERE id >= 1 AND id<5 AND cinsiyet = 0