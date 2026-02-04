# arguments: patreon_id

$execute if data storage pandamium:supporters import.users[{patreon_id:"$(patreon_id)"}] run scoreboard players set @s supporter_rank 1
