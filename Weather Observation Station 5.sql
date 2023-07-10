select city , len from(
select city,length(city)len,row_number() over(partition by length(city) order by city) rn 
from station where length(city)=(select min(length(city)) from  station)
)where rn=1
union
select city , len from(
select city,length(city)len,row_number() over(partition by length(city) order by city desc) rn 
from station where length(city)=(select max(length(city)) from  station)
)where rn=1;