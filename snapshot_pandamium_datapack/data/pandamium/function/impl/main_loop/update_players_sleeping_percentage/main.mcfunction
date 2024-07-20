execute store result score <total_overworld_players> variable in overworld if entity @a[x=0,gamemode=!creative,gamemode=!spectator]
execute if score <total_overworld_players> variable matches 0 run scoreboard players set <total_overworld_players> variable 1
execute store result score <active_overworld_players> variable store result score <players_sleeping_percentage> variable in overworld if entity @a[x=0,gamemode=!creative,gamemode=!spectator,predicate=!pandamium:player/is_inactive]
execute if score <active_overworld_players> variable matches 0 run scoreboard players set <players_sleeping_percentage> variable 1

scoreboard players operation <players_sleeping_percentage> variable *= #100 constant

execute if score <active_overworld_players> variable matches 3 run scoreboard players operation <players_sleeping_percentage> variable *= #2 constant
execute if score <active_overworld_players> variable matches 3 run scoreboard players operation <players_sleeping_percentage> variable /= #3 constant
execute if score <active_overworld_players> variable matches 4..5 run scoreboard players operation <players_sleeping_percentage> variable /= #2 constant
execute if score <active_overworld_players> variable matches 6.. if predicate pandamium:environment/is_raining_and_thundering run scoreboard players operation <players_sleeping_percentage> variable /= #2 constant
execute if score <active_overworld_players> variable matches 6.. unless predicate pandamium:environment/is_raining_and_thundering run scoreboard players operation <players_sleeping_percentage> variable /= #3 constant

execute store result storage pandamium:local functions."pandamium:impl/main_loop/update_players_sleeping_percentage/main".value int 1 run scoreboard players operation <players_sleeping_percentage> variable /= <total_overworld_players> variable
function pandamium:impl/main_loop/update_players_sleeping_percentage/set_value with storage pandamium:local functions."pandamium:impl/main_loop/update_players_sleeping_percentage/main"
