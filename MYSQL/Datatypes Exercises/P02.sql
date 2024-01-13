ALTER TABLE minions
ADD column town_id INT;
alter table minions
add constraint fk_minions_town
foreign key minions(town_id)
references towns(id);