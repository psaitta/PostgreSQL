select 
	count (*),
	country
from
	users
group by
	country
having
	count(*) > 5
order by
	count(*) desc;
