--Alt sorgularla çalýþmak
--Yeni bir sütun hesaplamak için alt sorgu kullanmak
--bu durumda alt sorgu tek bir deðer döndürmek zorundadýr
select * ,
(select Ad+' '+Soyad from Kullanici where Id=Kiralama.KullaniciId)

from Kiralama
--Çoklu sonuç döndüren alt sorgular
--in operatörünün kullanýmý
select * from Kiralama
where KullaniciId in ('7','4','10','5')

select * from Kiralama
where Kiralama.KullaniciId in
(
 select Id from Kullanici where YEAR(dogumtarihi)>2005
)
