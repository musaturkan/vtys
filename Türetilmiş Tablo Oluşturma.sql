
--Türetilmiþ Tablolar

select * from
(
	select Id,Ad,Soyad,KayitTarihi 
	from Ogrenci
)as OgrenciBilgi

where OgrenciBilgi.Ad='Gonca'