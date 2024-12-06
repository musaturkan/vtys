
--prosedür dýþýndaki bir deðiþkene prosedürün içinde yapýlan bir
--hesaplama iþleminin sonucunu aktarmak istersek output parametreli prosedür kullanýlýr

create proc biletHesapla 
@kullanicino int, @toplamFiyat money output
as
select @toplamFiyat=SUM(bilet.fiyat) from Bilet
where Bilet.KullaniciNo=@kullanicino