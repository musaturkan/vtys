
--StoredProsedürler - Saklý Yordamlar
--Bir sorguya isim vererek saklamaktan ibarettir. Sorgu derlenmiþ olarak sunucu belleðinde saklanýr
--Bu yüzden normal sorgulara göre daha performanslý çalýþýrlar
--Prosedürler sorgu içinde kullanýlamazlar
--Prosedür çaðrýlýr ve bize bir sonuç döndürür.

create proc TakvimBilgi
as
select 
Tur.Ad,DATEDIFF(DAY,Takvim.BaslamaTarihi,Takvim.BitisTarihi) Süresi,
Kategori.Ad kategori
from Takvim
inner join Tur on Takvim.TurNo=Tur.No
inner join Kategori on Tur.KategoriId=Kategori.No
