--Gruplama Fonksiyonlar�
--Count, Min, Max, Sum, Avg fonksiyonlar� kullan�l�r
--Group By ifadesi ile veriler gruplan�r
--Gruplama yap�ld���nda sadece gruplama yap�lan alan ve grup fonksiyonlar�n� de�erleri g�sterilir
--
select 
Tur.Ad,
Count(*) Say�,
SUM(Bilet.fiyat),
MAX(bilet.fiyat),
AVG(bilet.fiyat)
--Takvim.BaslamaTarihi
--Takvim.BaslamaTarihi,
--Takvim.BitisTarihi,
--Kategori.Ad Kategori
from Tur
inner join Takvim on Tur.No=Takvim.TurNo
inner join Kategori on Kategori.No=Tur.KategoriId
inner join Bilet on Takvim.No=Bilet.TakvimNo
group by Tur.Ad
