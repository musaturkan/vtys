
--IN operatörü

select * from Antreman
where Id=1 or Id=3 or Id=5

select * from Antreman
where Antreman.Id in('1','3','5')

select * from Antreman
where Antreman.Id in
(
	select AntremanId from AntremanProgram
)