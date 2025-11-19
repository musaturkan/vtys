
--gruplamalý sorgularda grup üzerinde filtreleme yapmak
--gruplamalý veriler üzerinde þart koþmak için having kelimesi kullanýlýr

select 
Kiralama.KullaniciId,
Kullanici.Ad,Kullanici.Soyad,
count(*) KiralamaSayisi
from Kiralama
inner join Kullanici on Kiralama.KullaniciId=Kullanici.Id
group by Kiralama.KullaniciId,Kullanici.Ad,Kullanici.Soyad
having count(*)>1