execute store result score <nether_player_count> variable in the_nether if entity @a[x=0,gamemode=!spectator]
execute store result score <overworld_player_count> variable in overworld if entity @a[x=0,gamemode=!spectator]
execute store result score <end_player_count> variable in the_end if entity @a[x=0,gamemode=!spectator]

execute store result score <staff_world_player_count> variable in pandamium:staff_world if entity @a[x=0,gamemode=!spectator]
scoreboard players operation <overworld_player_count> variable += <staff_world_player_count> variable

execute store result score <nether_mob_count> variable in the_nether if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <overworld_mob_count> variable in overworld if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <end_mob_count> variable in the_end if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]

function pandamium:utils/get/total_sleeping_players
execute store result score <minimum_sleeping_players_required> variable run gamerule playersSleepingPercentage
scoreboard players operation <minimum_sleeping_players_required> variable *= <overworld_player_count> variable
scoreboard players operation <minimum_sleeping_players_required> variable /= #-100 constant
scoreboard players operation <minimum_sleeping_players_required> variable *= #-1 constant

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========"]

tellraw @s [{"text":"","color":"aqua"},{"text":"Overworld:","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"bold":true},{"text":"\n Sleeping Players: ","color":"green"},{"score":{"name":"<total_sleeping_players>","objective":"variable"},"bold":true},[{"text":" (","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"At least ","color":"gray"},{"score":{"name":"<minimum_sleeping_players_required>","objective":"variable"}}," player(s) in the\noverworld are required to be\nsleeping in order to skip the\nnight."]}},{"score":{"name":"<total_sleeping_players>","objective":"variable"}},"/",{"score":{"name":"<minimum_sleeping_players_required>","objective":"variable"}},")"],{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<overworld_mob_count>","objective":"variable"},"bold":true}]
execute unless predicate pandamium:environment/is_raining run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Clear","color":"aqua"}]
execute if predicate pandamium:environment/is_raining unless predicate pandamium:environment/is_raining_and_thundering run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Rain","color":"aqua"}]
execute if predicate pandamium:environment/is_raining_and_thundering run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Thunder","color":"aqua"}]

tellraw @s [{"text":"","color":"aqua"},{"text":"Nether: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<nether_mob_count>","objective":"variable"},"bold":true}]
tellraw @s [{"text":"","color":"aqua"},{"text":"End: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<end_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<end_mob_count>","objective":"variable"},"bold":true}]

tellraw @s {"text":"============================","color":"aqua"}

scoreboard players reset @s world_info
scoreboard players enable @s world_info
