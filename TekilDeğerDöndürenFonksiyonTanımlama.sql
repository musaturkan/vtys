--Herhangi bir parametre olmasa bile argüman parantezleri belirtilmelidir
--Returns anahtar kelimesi ile fonksiyon dönüþ tipi belirtilir
--Fonksiyonda çalýþtýrýlacak sql kodu Begin End bloðu arasýna yazýlýr
--Select ifadesi deðiþkenlere deðer atamak için kullanýlabilir
--declare ifadesi deðiþken tanýmlamak için kullanýlýr
--deðiþken isimleri @ karakteri ile baþlamak zorundadýr
--bir sorguda hesaplanan bir deðer bir deðiþkene aktarýlabilir
--fonksiyon sorgu içinde çaðrýlýrken þema ismi belirtilmelidir
create function KullaniciBiletSayisi
(@kullaniciNumara int)
RETURNS int
Begin
	declare @sonuc int
	declare @toplamFiyat money
	declare @ortalamaFiyat money
	select 
		@sonuc= COUNT(*), @toplamFiyat=SUM(fiyat) 	
	from Bilet where Bilet.KullaniciNo=@kullaniciNumara

	return @sonuc
End


