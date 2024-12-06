
--Fonkisyonun d�nd�rece�i tablonun yap�s� tablo tipinde de�i�ken ile bilidirilebilir
--Bu durumda d�nd�relecek de�i�kenin i�eri�i fonksiyon blo�unda doldurulmal�d�r
create function turBiletSayisi
()
returns @sonucVeri table
(
	TurNo int,
	BiletSayisi int,
	ToplamFiyat int,
	SorguTarihi datetime
)
Begin

insert into @sonucVeri(TurNo,BiletSayisi,ToplamFiyat)
select TurNo,COUNT(*),SUM(bilet.fiyat) from Bilet
inner join Takvim t on Bilet.TakvimNo=t.No
group by t.TurNo

update @sonucVeri set SorguTarihi=GETDATE()

return
end