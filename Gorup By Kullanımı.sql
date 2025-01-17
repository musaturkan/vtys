--Gruplama Fonksiyonları
--Count, Min, Max, Sum, Avg fonksiyonları kullanılır
--Group By ifadesi ile veriler gruplanır
--Gruplama yapıldığında sadece gruplama yapılan alan ve grup fonksiyonlarını değerleri gösterilir
--
select 
Tur.Ad,
Count(*) Sayı,
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
