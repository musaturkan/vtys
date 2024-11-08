
select 
YEAR(DogumTarihi) DogumYili,
count(*)
from Kullanici
group by YEAR(dogumtarihi)


select 
--Kullanici.DogumTarihi,
year(getdate())-year(dogumtarihi) Yas,
COUNT(*)
--GETDATE() ÞimdiziZaman
from Kullanici
group by year(getdate())-year(dogumtarihi) 

--Birden fazla alana göre gruplama yapýlabilir

select 
--Kullanici.Ad,Kullanici.Soyad,
--Kategori.Ad Kategori,
--Bilet.Fiyat,
--Tur.Ad Tur
Kullanici.Ad +' '+Kullanici.Soyad,Kategori.Ad Kategori,
COUNT(*)
from Kullanici
inner join Bilet on Kullanici.No=Bilet.KullaniciNo
inner join Takvim on Bilet.TakvimNo=Takvim.No
inner join Tur on Takvim.TurNo=Tur.No
left join Kategori on Tur.KategoriId=Kategori.No
group by rollup( Kullanici.Ad +' '+Kullanici.Soyad,Kategori.Ad)
