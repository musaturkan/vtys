
select 
*, 
(select Ad from AntremanTur where Id=Antreman.AntremanTurId)
from Antreman

select * from Antreman
where Antreman.AntremanTurId = (select Id from AntremanTur where Ad='Kondüsyon')