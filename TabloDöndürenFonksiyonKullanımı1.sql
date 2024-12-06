--tablo döndüren fonksiyonlar baþka tablolarla birleþitrilerek sorgulanabilir
--Bonus Notu : Tablo birleþtirilirken birden fazla þart belirtilebilir
select * from dbo.biletBilgi(4) f
left join Yorum y on f.kullaniciNo = y.KullaniciNo and f.takvimno=y.TakvimNo