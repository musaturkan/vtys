--Tablo tipinde sonuç döndüren fonksiyon baþka tablolarla birleþitirilerek sorgulanabilir
--Fonksiyonun döndürdüðü listenin her bir sütunu farklý isimlendirilmelidir
--Bir sorgu sonucu doðrudan tablo olarak döndürülebilir
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