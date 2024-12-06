

create type dbo.kullaniciTipi as table
(
No int,
Ad nvarchar(max),
Soyad nvarchar(max)
)

create proc kullanicisec
@liste as dbo.kullaniciTipi readonly
as
select b.* from Bilet b
inner join @liste l on b.KullaniciNo=l.No

