execute store result score <nether_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=-1}]
execute store result score <overworld_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=0}]
execute store result score <end_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=1}]

execute store result score <staff_world_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=2}]
scoreboard players operation <overworld_player_count> variable += <staff_world_player_count> variable

execute store result score <nether_mob_count> variable in the_nether if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <overworld_mob_count> variable in overworld if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <end_mob_count> variable in the_end if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]

scoreboard players set <sleeping_players> variable 0
#if the player's hitbox height is less than 0.3, they must be sleeping
execute in overworld as @a[x=0] at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run scoreboard players add <sleeping_players> variable 1

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========",{"text":"\nOverworld:","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"bold":true},{"text":"\n Sleeping Players: ","color":"green"},{"score":{"name":"<sleeping_players>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<overworld_mob_count>","objective":"variable"},"bold":true},{"text":"\nNether: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<nether_mob_count>","objective":"variable"},"bold":true},{"text":"\nEnd: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<end_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<end_mob_count>","objective":"variable"},"bold":true},"\n============================"]

scoreboard players reset @s world_info
scoreboard players enable @s world_info
