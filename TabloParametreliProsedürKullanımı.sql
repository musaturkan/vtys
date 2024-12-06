
declare @veri as dbo.KullaniciTipi


insert into @veri
select No,Ad,Soyad from Kullanici
where YEAR(kullanici.dogumtarihi)>2000

exec kullaniciSec @liste = @veri