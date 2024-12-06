--Tablo tipinde sonu� d�nd�ren fonksiyon ba�ka tablolarla birle�itirilerek sorgulanabilir
--Fonksiyonun d�nd�rd��� listenin her bir s�tunu farkl� isimlendirilmelidir
--Bir sorgu sonucu do�rudan tablo olarak d�nd�r�lebilir
alter function biletBilgi
(@turnumarasi int)
returns table
as
RETURN
select 
Kullanici.No KullaniciNo,Kullanici.Ad,Kullanici.Soyad,
Bilet.Tarih,Bilet.Fiyat,
Tur.Ad TurAdi,
Takvim.No TakvimNo,
Tur.No TurNo
from Bilet
inner join Kullanici on Bilet.KullaniciNo=Kullanici.No
inner join Takvim on Bilet.TakvimNo=Takvim.No
inner join Tur on Tur.No=Takvim.TurNo
where Tur.No=@turnumarasi