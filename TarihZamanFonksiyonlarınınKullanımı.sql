
select FORMAT(baslamatarihi,'dd MMMM yyyy','tr-TR'),
MONTH(baslamatarihi),
YEAR(baslamatarihi),
DATEADD(WW,2,BaslamaTarihi),
DATEPART(w,baslamatarihi),
* 
from Kiralama