--Sistem fonksiyonlarýnýn kullanýmý

select getdate(), * from Kullanici

select SQUARE(Id), * from Kullanici

select LEN(Ad),LEFT(Ad,3),
RIGHT(Ad,3),
UPPER(soyad),
UPPER('test amaçlý metin'),
REPLACE(Ad,'Ah','Kl'),
Ad,Soyad 
from Kullanici