--Türetilmiþ Tablolar
select * from
(
select BaslamaTarihi,BitisTarihi,Kontenjan,
(Select Ad from tur where tur.No=Takvim.TurNo) TurAdi
from Takvim
) as TakvimBilgi
where TakvimBilgi.TurAdi='Akdeniz Turu'
--with
---Türetilmiþ Tablo: Bir sorgu sonucuna bir isim vererek onu tekrar bir tabloymuþ gibi sorgumak
--amacýyla oluþturulan yapýdýr. Bir sorgu parantez içine alýnarak bir takma isim verilir.
--Ardýndan bu takma isimli bir tablo olarak yeniden sorgulamanibilir.