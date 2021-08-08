execute store result score <overworld_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=0}]
execute store result score <nether_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=-1}]
execute store result score <end_player_count> variable if entity @a[gamemode=!spectator,scores={in_dimension=1}]

tellraw @s [{"text":"======= ","color":"aqua"},{"text":"World_Info","bold":true}," ======",{"text": "\nOverworld: ","color":"green"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"color":"aqua"},{"text":"\nNether: ","color":"green"},{"score":{"name":"<nether_player_count>","objective":"variable"},"color":"aqua"},{"text": "\nEnd: ","color":"green"},{"score":{"name":"<end_player_count>","objective":"variable"},"color":"aqua"},{"text": "\n=========================","color":"aqua"}]

scoreboard players reset @s world_info
scoreboard players enable @s world_info
