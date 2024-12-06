
alter proc KullaniciBiletListe
@kullaniciNumara int
as
select Kullanici.Ad,Kullanici.Soyad,Bilet.*
from Bilet
inner join Kullanici on Bilet.KullaniciNo=Kullanici.No
where Bilet.KullaniciNo=@kullaniciNumara