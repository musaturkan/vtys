
select 
Tur.No,
Ad,
KategoriId,
(select Ad from Kategori where No=Tur.KategoriId) as KategoriAdi
from Tur

--çoklu sonuç döndüren alt sorgular

select * from Takvim

--insert into Takvim(BaslamaTarihi,BitisTarihi,TurNo,Kontenjan)
--values('2025-04-20','2025-04-28',1,35),
--('2025-11-05','2025-11-20',15,30),
--('2025-02-10','2025-02-20',12,20),
--('2025-06-01','2025-06-10',13,30),
--('2025-10-05','2025-10-15',15,45)

select * from Takvim
where Takvim.TurNo in ('1','3','12','13')

select Takvim.BaslamaTarihi,Takvim.BitisTarihi,
(select ad from tur where Takvim.TurNo=Tur.No)
from Takvim
where Takvim.TurNo in ( select Tur.No from Tur where KategoriId ='4'  )

