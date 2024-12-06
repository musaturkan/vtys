
--StoredProsed�rler - Sakl� Yordamlar
--Bir sorguya isim vererek saklamaktan ibarettir. Sorgu derlenmi� olarak sunucu belle�inde saklan�r
--Bu y�zden normal sorgulara g�re daha performansl� �al���rlar
--Prosed�rler sorgu i�inde kullan�lamazlar
--Prosed�r �a�r�l�r ve bize bir sonu� d�nd�r�r.

create proc TakvimBilgi
as
select 
Tur.Ad,DATEDIFF(DAY,Takvim.BaslamaTarihi,Takvim.BitisTarihi) S�resi,
Kategori.Ad kategori
from Takvim
inner join Tur on Takvim.TurNo=Tur.No
inner join Kategori on Tur.KategoriId=Kategori.No
