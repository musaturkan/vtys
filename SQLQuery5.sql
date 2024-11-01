--T�retilmi� Tablolar
select * from
(
select BaslamaTarihi,BitisTarihi,Kontenjan,
(Select Ad from tur where tur.No=Takvim.TurNo) TurAdi
from Takvim
) as TakvimBilgi
where TakvimBilgi.TurAdi='Akdeniz Turu'
--with
---T�retilmi� Tablo: Bir sorgu sonucuna bir isim vererek onu tekrar bir tabloymu� gibi sorgumak
--amac�yla olu�turulan yap�d�r. Bir sorgu parantez i�ine al�narak bir takma isim verilir.
--Ard�ndan bu takma isimli bir tablo olarak yeniden sorgulamanibilir.