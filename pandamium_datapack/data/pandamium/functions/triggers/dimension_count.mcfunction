execute store result score <overworld_player_count> variable if entity @a[nbt={Dimension:"minecraft:overworld"}]
execute store result score <nether_player_count> variable if entity @a[nbt={Dimension:"minecraft:the_nether"}]
execute store result score <end_player_count> variable if entity @a[nbt={Dimension:"minecraft:the_end"}]
tellraw @s {"text": "How many players are in each dimension?","color":"aqua","bold":true}

tellraw @s {"text": "[Overworld]","color":"green"}
tellraw @s {"score":{"name":"<overworld_player_count>","objective":"variable"},"color":"green"}

tellraw @s {"text": "[Nether]","color":"red"}
tellraw @s {"score":{"name":"<nether_player_count>","objective":"variable"},"color":"red"}

tellraw @s {"text": "[End]","color":"gray"}
tellraw @s {"score":{"name":"<end_player_count>","objective":"variable"},"color":"gray"}
scoreboard players reset @s dimension_count
scoreboard players enable @s dimension_count