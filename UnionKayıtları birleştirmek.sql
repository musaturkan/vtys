

select 
Tur.Ad,
Kategori.Ad Kategori
from Tur 
left join Kategori on Tur.KategoriId=Kategori.No

--�ki sorgu sonucunu birle�tirmek union ifadesi
select Tur.No, tur.Ad from Tur
union all
select No, Ad from Kullanici

--�ki sorgu sonucu birle�tirilecek ise:
--her iki sorgu da ayn� say�da s�tun d�nd�rmelidir
--Kar��l�kl� s�tunalar�n veri tipi ayn� olmal�d�r