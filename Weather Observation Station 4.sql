select c1-c2 from(select count(city) c1,count(distinct city) c2 from station);