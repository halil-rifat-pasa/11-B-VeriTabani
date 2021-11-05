CREATE TABLE tbl_birimler(
birim_id_PK int identity primary key,
birim_adi varchar(100)
)

CREATE TABLE tbl_calisanlar(
calisan_id_PK int identity primary key,
adi varchar(40) not null,
soyadi varchar(40) not null,
maas decimal(18,2) check(maas > 499) default 500,
adresi varchar(200),
telefon_numarasi varchar(11) check(len(telefon_numarasi) = 11),
birim int foreign key references tbl_birimler(birim_id_PK)
)

CREATE TABLE tbl_bilgisayarlar(
bilgisayar_id_PK int identity primary key,
mac_adresi varchar(100) unique,
ekran_karti varchar(50),
islemci_modeli varchar(40),
ram_miktari varchar(3) default 4 check(ram_miktari >= 4),
calisan_id_FK int foreign key references tbl_calisanlar(calisan_id_PK)

)

