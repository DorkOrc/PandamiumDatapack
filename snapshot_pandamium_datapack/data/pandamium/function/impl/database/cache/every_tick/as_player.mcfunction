# arguments: username, id

scoreboard players set <player_exists> variable 1

execute if score @s temp_1 matches 0 if score @s detect.time_since_death matches 1.. run function pandamium:impl/database/cache/every_tick/return_to_death_location with storage pandamium:temp entries[-1].last_death_location
