
--insert into Ogrenci(Ad,Soyad,TcKimlikNo,Cinsiyet,KayitTarihi,DogumTarihi,OgrenciNumarasi)
--values('Berkcan','Yýlmaz','98745621','0','2023-05-10 11:35','2008-08-25','5874587545')

--insert into Grup(Ad,KisaAd)
--values('Üçüncü Seviye','G3')

select * from Grup

--Kayýtlarý güncelleme
update Grup set KisaAd='G3', Ad='Süper Grup' where Id='8'

--Kayýtlarý silmek
delete from Antreman where Id='56'

delete from Grup where Id='3'

delete from Grup

--truncate table Grup