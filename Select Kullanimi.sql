
select * from Ogrenci

select 
	O.Ad 'Ogrenci Adi', 
	O.Soyad 'Ogrenci Soyadý', 
	O.TcKimlikNo,
	O.DogumTarihi 'Dogduðu Tarih'
from Ogrenci O


--Kayýtlarý filtreleme : Where

select Ad,Soyad,KayitTarihi from Ogrenci O
where (O.Ad='Gonca' and DogumTarihi>'2003-12-30') 
			or
	  (O.Soyad='Karakoç' and o.KayitTarihi>'2023-08-01')

--and veya or anahtar kelimeleri ile mantýksal birleþtirmeler yapýlabilir
--parantezler kullanýlarak mantýksal operatörler yazýlabilir

