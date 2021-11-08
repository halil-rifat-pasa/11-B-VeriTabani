CREATE TABLE tbl_kategori(
kategori_id_PK int identity primary key,
kategori_adi varchar(40) unique
)
CREATE TABLE tbl_kitaplar(
kitap_id_PK int identity primary key,
kitap_adi varchar(40) unique,
ISBN varchar(30) unique not null
)
CREATE TABLE tbl_yazarlar(
yazar_id_PK int identity primary key,
yazar_adi varchar(40),
yazar_soyadi varchar(40)
)
CREATE TABLE tbl_yazarlar_kitaplar(
yazar_kitap_id_PK int identity primary key,
yazar_id_FK int foreign key references tbl_yazarlar(yazar_id_PK),
kitap_id_FK int foreign key references tbl_kitaplar(kitap_id_PK)
)
CREATE TABLE tbl_kitap_kategoriler(
kategori_kitap_id_PK int identity primary key,
kategori_id_FK int foreign key references tbl_kategori(kategori_id_PK),
tbl_kitaplar int foreign key references tbl_kitaplar(kitap_id_PK),
)
