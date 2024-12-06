--Herhangi bir parametre olmasa bile arg�man parantezleri belirtilmelidir
--Returns anahtar kelimesi ile fonksiyon d�n�� tipi belirtilir
--Fonksiyonda �al��t�r�lacak sql kodu Begin End blo�u aras�na yaz�l�r
--Select ifadesi de�i�kenlere de�er atamak i�in kullan�labilir
--declare ifadesi de�i�ken tan�mlamak i�in kullan�l�r
--de�i�ken isimleri @ karakteri ile ba�lamak zorundad�r
--bir sorguda hesaplanan bir de�er bir de�i�kene aktar�labilir
--fonksiyon sorgu i�inde �a�r�l�rken �ema ismi belirtilmelidir
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


