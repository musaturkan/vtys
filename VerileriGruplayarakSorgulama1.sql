
--gruplama alanlarý group by ile belirtilir
--gruplamalý sorgu sonucunda sadece gruoup by ile belirtilen sütunlar
--ve gruplama fonksiyonlarýnýn hesapladýðý sonuçlar gösterilir
--group by ile belirtilmeyen sütunlar görüntülenemez
--birden fazla alana göre gruplama yapýlabilir
select * from
(
select 
Kiralama.KullaniciId,
Kullanici.Ad,Kullanici.Soyad,
count(*) KiralamaSayisi
from Kiralama
inner join Kullanici on Kiralama.KullaniciId=Kullanici.Id
group by Kiralama.KullaniciId,Kullanici.Ad,Kullanici.Soyad
) as KiraciVeri
where KiraciVeri.KiralamaSayisi>1