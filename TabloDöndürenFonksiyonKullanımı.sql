
select 
Tur.*,tb.biletSayisi,tb.ToplamFiyat

from dbo.turBiletSayisi() tb
inner join Tur on Tur.No=tb.TurNo