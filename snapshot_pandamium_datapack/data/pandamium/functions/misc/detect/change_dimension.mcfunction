execute if predicate pandamium:in_dimension/the_nether run scoreboard players set @s in_dimension -1
execute if predicate pandamium:in_dimension/overworld run scoreboard players set @s in_dimension 0
execute if predicate pandamium:in_dimension/the_end run scoreboard players set @s in_dimension 1
execute if predicate pandamium:in_dimension/staff_world run scoreboard players set @s in_dimension 2
xp add @s 0

advancement revoke @s only pandamium:detect/change_dimension
