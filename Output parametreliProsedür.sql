
--prosed�r d���ndaki bir de�i�kene prosed�r�n i�inde yap�lan bir
--hesaplama i�leminin sonucunu aktarmak istersek output parametreli prosed�r kullan�l�r

create proc biletHesapla 
@kullanicino int, @toplamFiyat money output
as
select @toplamFiyat=SUM(bilet.fiyat) from Bilet
where Bilet.KullaniciNo=@kullanicino