--tablo d�nd�ren fonksiyonlar ba�ka tablolarla birle�itrilerek sorgulanabilir
--Bonus Notu : Tablo birle�tirilirken birden fazla �art belirtilebilir
select * from dbo.biletBilgi(4) f
left join Yorum y on f.kullaniciNo = y.KullaniciNo and f.takvimno=y.TakvimNo