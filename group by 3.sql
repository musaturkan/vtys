
--gruplamalara þart koþmak
--gruplama sonucunda gelen verileri filtrelem kiçin having ifadesi kullanýlýr
select 
	Tur.Ad,
	COUNT(Tur.KategoriId) sayi,
	COUNT(*) sayi2
from Kullanici
inner join Bilet on Kullanici.No=Bilet.KullaniciNo
left join Takvim on Bilet.TakvimNo=Takvim.No
left join Tur on Takvim.TurNo=Tur.No
left join Kategori on Tur.KategoriId=Kategori.No
group by Tur.Ad
--having COUNT(Tur.Ad) >20