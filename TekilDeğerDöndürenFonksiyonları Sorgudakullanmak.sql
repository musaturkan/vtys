

select dbo.KullaniciBiletSayisi(1)
--tekil de�er d�nd�ren fonksiyonlar sorgu i�ind s�tun olu�turmak i�in kullan�l�r
--sorguda filtreleme yapmak i�in kullan�labilir
--Fonksiyon sorgu i�inde �a�r�l�rken �ema ad� belirtilmelidir
select 
Kullanici.Ad,Kullanici.Soyad,
dbo.KullaniciBiletSayisi(Kullanici.No) BiletSayisi

from Kullanici
where dbo.kullanicibiletsayisi(Kullanici.No)<4
order by BiletSayisi desc