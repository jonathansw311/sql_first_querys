-- write your queries here
SELECT * FROM owners
FULL JOIN vehicles v
ON owners.id = v.owner_id;



SELECT o.first_name, o.last_name, count(*)
FROM owners o                                                                                                                                                                                                                                  
JOIN vehicles v                                                                                                                                                                                                                               
ON o.id = v.owner_id GROUP BY o.first_name, o.last_name ORDER BY count;

SELECT o.first_name, o.last_name, AVG(price), count(*)
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id 
GROUP BY o.first_name, o.last_name
HAVING count (*)>1 AND AVG(price)>10000 ORDER BY count DESC;

