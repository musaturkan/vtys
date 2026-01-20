
--Veri tabaný oluþturma komutu

create database IkinciElSatis

--nesne silme komutu
--rop database IkinciElsatis


--Tablo oluþtruma

create table Ogrenci
(
	Id int identity(1,1) primary key,
	Ad nvarchar(max),
	Soyad nvarchar(max),
	TcKimlikNo char(11),
	KayitTarihi datetime,
	DogumTarihi datetime,
	Cinsiyet bit
)

create table Grup
(
Id int identity(1,1) primary key,
Ad nvarchar(500),
KisaAd nvarchar(10),
EklemeTarihi datetime default getdate()
)

create table AntremanTur
(
Id int identity(1,1) primary key,
Ad nvarchar(50)
)

create table Antreman
(
Id int identity(1,1) primary key,
Ad nvarchar(500),
KisaAd nvarchar(10),
AntremanTurId int Foreign Key References AntremanTur(Id),
--constraint Fk_antremantur Foreign key(AntremanTurId) references antremantur(Id)
)


alter table Ogrenci
add GrupId int

alter table Ogrenci
add constraint Fk_ogrenciGrupId Foreign Key(GrupId) references Grup(Id)