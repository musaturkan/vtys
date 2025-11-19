--rasgele kayýt elde etmek için newid fonksiyonu kullanýlabilir

select 
 top(4)
 newid(), * 
from Kullanici
order by NEWID()