

select dbo.KullaniciBiletSayisi(1)
--tekil deðer döndüren fonksiyonlar sorgu içind sütun oluþturmak için kullanýlýr
--sorguda filtreleme yapmak için kullanýlabilir
--Fonksiyon sorgu içinde çaðrýlýrken þema adý belirtilmelidir
select 
Kullanici.Ad,Kullanici.Soyad,
dbo.KullaniciBiletSayisi(Kullanici.No) BiletSayisi

from Kullanici
where dbo.kullanicibiletsayisi(Kullanici.No)<4
order by BiletSayisi desc