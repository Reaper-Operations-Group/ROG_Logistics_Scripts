#Query to get all users
SELECT concat('""',uid,'""'), concat('""',username,'""') , opCount, balance, isAdmin, isTeamLead, isQuartermaster, isActive, isLocked FROM users;

#Query to get all the inventory items for all players
SELECT *  FROM 
users AS u 
INNER JOIN lockeritem AS li
	ON u.uid = li.uid
INNER JOIN item as i
	ON li.itemid = i.itemid;
    
#Query to get all the inventory items for all players including the item type
SELECT u.uid, i.classname, it.name FROM 
users AS u 
INNER JOIN lockeritem AS li
	ON u.uid = li.uid
INNER JOIN item as i
	ON li.itemid = i.itemid
INNER JOIN itemtype as it
	ON it.id = i.typeid;