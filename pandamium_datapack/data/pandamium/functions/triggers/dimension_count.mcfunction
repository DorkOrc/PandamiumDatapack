execute store result score <overworld_player_count> variable if entity @a[nbt={Dimension:"minecraft:overworld"}]
execute store result score <nether_player_count> variable if entity @a[nbt={Dimension:"minecraft:the_nether"}]
execute store result score <end_player_count> variable if entity @a[nbt={Dimension:"minecraft:the_end"}]

tellraw @s {"text": "==== Dimension Count ====","color":"aqua","bold":true}

tellraw @s [{"text": "Overworld | ","color":"gray"},{"score":{"name":"<overworld_player_count>","objective":"variable"},"color":"gray"}]
tellraw @s [{"text": "Nether | ","color":"gray"},{"score":{"name":"<nether_player_count>","objective":"variable"},"color":"gray"}]
tellraw @s [{"text": "End | ","color":"gray"},{"score":{"name":"<end_player_count>","objective":"variable"},"color":"gray"}]

tellraw @s {"text": "==========================","color": "aqua"}

scoreboard players reset @s dimension_count
scoreboard players enable @s dimension_count