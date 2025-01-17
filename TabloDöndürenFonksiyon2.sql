
--Fonkisyonun döndüreceği tablonun yapısı tablo tipinde değişken ile bilidirilebilir
--Bu durumda döndürelecek değişkenin içeriği fonksiyon bloğunda doldurulmalıdır
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