select distinct city from station where upper(substr(city,1,1)) in ('A','E','I','O','U')
and upper(substr(city,-1,1)) in ('A','E','I','O','U');