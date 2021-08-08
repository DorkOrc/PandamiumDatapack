execute store result score <overworld_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=0}]
execute store result score <nether_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=-1}]
execute store result score <end_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=1}]

execute store result score <overworld_mob_count> variable in overworld if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <nether_mob_count> variable in the_nether if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]
execute store result score <end_mob_count> variable in the_end if entity @e[type=!#pandamium:mob_limit_excluded,type=!player,x=0]

tellraw @s [{"text":"======= ","color":"aqua"},{"text":"World_Info","bold":true}," ======",{"text": "\nOverworld ","color":"aqua","bold": true},{"text":"\nPlayers: ","color": "green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"color":"aqua"},{"text":" Mobs: ","color": "green"},{"score":{"name":"<overworld_mob_count>","objective":"variable"},"color":"aqua"},{"text":"\nNether ","color":"aqua","bold": true},{"text":"\nPlayers: ","color": "green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"color":"aqua"},{"text":" Mobs: ","color": "green"},{"score":{"name":"<nether_mob_count>","objective":"variable"},"color":"aqua"},{"text": "\nEnd ","color":"aqua","bold": true},{"text":"\nPlayers: ","color": "green"},{"score":{"name":"<end_player_count>","objective":"variable"},"color":"aqua"},{"text":" Mobs: ","color": "green"},{"score":{"name":"<end_mob_count>","objective":"variable"},"color":"aqua"},{"text": "\n=========================","color":"aqua"}]

scoreboard players reset @s world_info
scoreboard players enable @s world_info
