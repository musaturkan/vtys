

select 
Tur.Ad,
Kategori.Ad Kategori
from Tur 
left join Kategori on Tur.KategoriId=Kategori.No

--Ýki sorgu sonucunu birleþtirmek union ifadesi
select Tur.No, tur.Ad from Tur
union all
select No, Ad from Kullanici

--Ýki sorgu sonucu birleþtirilecek ise:
--her iki sorgu da ayný sayýda sütun döndürmelidir
--Karþýlýklý sütunalarýn veri tipi ayný olmalýdýr