--Gruplama Fonksiyonlarý
--Count, Min, Max, Sum, Avg fonksiyonlarý kullanýlýr
--Group By ifadesi ile veriler gruplanýr
--Gruplama yapýldýðýnda sadece gruplama yapýlan alan ve grup fonksiyonlarýný deðerleri gösterilir
--
select 
Tur.Ad,
Count(*) Sayý,
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
