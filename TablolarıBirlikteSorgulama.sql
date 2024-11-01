
--Tablolar� birlikte sorgulama
select 
Kullanici.Ad,
Kullanici.Soyad,
KayitTarihi,
DogumTarihi,
Unvan.Ad
From Kullanici
inner join Unvan on Kullanici.UnvanNo=Unvan.No

--Tur isimlerini kategori isimleriyle listeleme
select 
Tur.Ad,
Kategori.Ad 
from Tur
inner join Kategori on Tur.KategoriId=Kategori.No

--Her bir turun hangi takvimde d�zenlendi�ini listeleyen sorguyu yaz�n�z.
--TurAdi BaslamaTarihi BitisTarihi, Kontenjan� KategoriAd�
select Tur.Ad,
Takvim.BaslamaTarihi,Takvim.BitisTarihi,Takvim.Kontenjan,
Kategori.Ad Kategori
from Tur
inner join Takvim on Takvim.TurNo=Tur.No
inner join Kategori on Tur.KategoriId=Kategori.No
--inner join sorgusu iki tablodan sadece e�le�en kay�tlar� listeler
--e�le�meyen kay�tlar listelenmez
select * from Kullanici
inner join Unvan on Kullanici.UnvanNo=Unvan.no	

--Kullan�c� bilet bilgilerini listeyene sorgu
select 
Kullanici.Ad,
Kullanici.Soyad, 
Unvan.Ad unvanAdi, 
Bilet.Tarih,Bilet.Fiyat,
tur.Ad TurAdi,
Takvim.BaslamaTarihi,
Takvim.BitisTarihi
from Bilet
right join Kullanici on Bilet.KullaniciNo=Kullanici.No
left join Unvan on Kullanici.UnvanNo=Unvan.No
inner join Takvim on Bilet.TakvimNo=Takvim.No
inner join Tur on Takvim.TurNo=Tur.No

order by Kullanici.No

select * from Kullanici
full join Unvan on Kullanici.UnvanNo=Unvan.No