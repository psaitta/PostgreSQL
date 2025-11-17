select * from users where country like 'Falk%';

UPDATE
	users
SET
	country ='Islas Malvinas'
WHERE
	country ='Falkland Islands';


select * from users where country like 'Islas%';

select first_name, last_name, last_connection from users where last_connection LIKE '221%';

select first_name, last_name, followers from users where followers > 4600 AND followers < 4700
order by followers asc;

select 
	count(*) as total_users,
	min (followers) as min_followers,
	max (followers) as max_followers,
	round (avg(followers)) as avg_followers,
	sum(followers) / count(*) as avg_manual
from 
	users;

select
	count(*), followers
from 
	users
where 
	--followers=4 or followers=4999
	followers between 4600 and 4999
group by followers;
