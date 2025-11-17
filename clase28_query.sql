select name,
	substring( name, 0, 5) as subtring,
	position( ' ' in name) as position,
	substring( name, 0, position( ' ' in name)) as FirstName,
	substring( name, position(' ' in name)+1) as LastName
from users;

