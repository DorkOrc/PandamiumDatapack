execute store result score <nether_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=-1}]
execute store result score <overworld_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=0}]
execute store result score <end_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=1}]

execute store result score <nether_mob_count> variable in the_nether if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <overworld_mob_count> variable in overworld if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <end_mob_count> variable in the_end if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========",{"text":"\nOverworld:","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<overworld_mob_count>","objective":"variable"},"bold":true},{"text":"\nNether: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<nether_mob_count>","objective":"variable"},"bold":true},{"text":"\nEnd: ","bold":true},{"text":"\n Players: ","color":"green"},{"score":{"name":"<end_player_count>","objective":"variable"},"bold":true},{"text":"\n Mobs: ","color":"green"},{"score":{"name":"<end_mob_count>","objective":"variable"},"bold":true},"\n============================"]

scoreboard players reset @s world_info
scoreboard players enable @s world_info
