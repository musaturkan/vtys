
with veri(KullaniciId,DaireId,Ad,Soyad,BaslamaTarihi)
as
(
select 
Kiralama.KullaniciId,Kiralama.DaireId,Kullanici.Ad,Kullanici.Soyad,
Kiralama.BaslamaTarihi
from Kiralama
inner join Kullanici on Kiralama.KullaniciId=Kullanici.Id
),

veri2(DaireId,DaireAdi)
as
(
select Id,Ad from Daire
)

select * from veri
inner join veri2 on veri.DaireId=veri2.DaireId