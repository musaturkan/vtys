--tablo döndüren fonksiyonlar başka tablolarla birleşitrilerek sorgulanabilir
--Bonus Notu : Tablo birleştirilirken birden fazla şart belirtilebilir
select * from dbo.biletBilgi(4) f
left join Yorum y on f.kullaniciNo = y.KullaniciNo and f.takvimno=y.TakvimNo