
--Türetilmiþ Tablo Kullanmak
--Bir sorgu sonucunu sanki bir tabloymuþ gibi yeniden
--sorgumalama iþlemidir.

--with anahtar kelimesi ile türetilmiþ tablo oluþturulabilir
select * from
(
select Kiralama.BaslamaTarihi,Kiralama.DaireId,
Kiralama.KullaniciId,Kullanici.Ad,Kullanici.Soyad
from Kiralama 
inner join Kullanici on Kiralama.KullaniciId=Kullanici.Id
)as veri
inner join Daire on veri.DaireId=Daire.Id
where veri.BaslamaTarihi>'2020-02-15'