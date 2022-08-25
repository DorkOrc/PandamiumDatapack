execute store result score <nether_player_count> variable in the_nether if entity @a[x=0,gamemode=!spectator]
execute store result score <overworld_player_count> variable in overworld if entity @a[x=0,gamemode=!spectator]
execute store result score <end_player_count> variable in the_end if entity @a[x=0,gamemode=!spectator]

execute store result score <staff_world_player_count> variable in pandamium:staff_world if entity @a[x=0,gamemode=!spectator]
scoreboard players operation <overworld_player_count> variable += <staff_world_player_count> variable

execute store result score <nether_mob_count> variable in the_nether if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <overworld_mob_count> variable in overworld if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <end_mob_count> variable in the_end if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]

scoreboard players set <sleeping_players> variable 0
# if the player's hitbox height is less than 0.3, they must be sleeping
execute in overworld as @a[x=0] at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run scoreboard players add <sleeping_players> variable 1
execute store result score <player_sleeping_percentage> variable run gamerule playersSleepingPercentage

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========"]

tellraw @s [{"text":"","color":"aqua"},{"text":"Overworld:","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"bold":true},{"text":"\n Sleeping Players: ","color":"green"},{"score":{"name":"<sleeping_players>","objective":"variable"},"bold":true},[{"text":" (","color":"gray","hoverEvent":{"action":"show_text","value":[{"score":{"name":"<player_sleeping_percentage>","objective":"variable"},"color":"gray"},"% of players are required to be sleeping in order to skip the night."]}},{"score":{"name":"<player_sleeping_percentage>","objective":"variable"}},"%)"],{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<overworld_mob_count>","objective":"variable"},"bold":true}]
execute unless predicate pandamium:is_raining run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Clear","color":"aqua"}]
execute if predicate pandamium:is_raining unless predicate pandamium:is_raining_and_thundering run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Rain","color":"aqua"}]
execute if predicate pandamium:is_raining_and_thundering run tellraw @s [{"text":" Weather: ","color":"green"},{"text":"Thunder","color":"aqua"}]

tellraw @s [{"text":"","color":"aqua"},{"text":"Nether: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<nether_mob_count>","objective":"variable"},"bold":true}]
tellraw @s [{"text":"","color":"aqua"},{"text":"End: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<end_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<end_mob_count>","objective":"variable"},"bold":true}]

tellraw @s {"text":"============================","color":"aqua"}

scoreboard players reset @s world_info
scoreboard players enable @s world_info
