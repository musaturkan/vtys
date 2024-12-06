

alter proc BiletEkle
@fiyat money,@kullanicino int,@takvimno int
as
insert into Bilet(Fiyat,TakvimNo,KullaniciNo,PNRNumara)
values(@fiyat,@takvimNo,@kullanicino,NEWID())
