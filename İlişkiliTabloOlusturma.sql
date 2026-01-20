

create table AntremanProgram
(
	Id int primary key identity(1,1),
	GunId int Foreign Key References Gun(Id),
	BaslamaSaati Time,
	BitisSaati Time,
	GrupId int Foreign Key References Grup(Id),
	AntremanId int Foreign Key References Antreman(Id),
	EklemeTarihi datetime default getdate()
)