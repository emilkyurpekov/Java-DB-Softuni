SELECT town_id,name FROM towns
WHERE name NOT REGEXP "^[RBD]"
ORDER BY name;