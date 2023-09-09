execute in overworld run spawnpoint @s 0 64 0

tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info] ","color":"dark_gray"},[{"selector":"@s","color":"gray"},"'s"],{"text":" spawnpoint was reset!","color":"gray"}]
scoreboard players reset @s on_join.reset_spawnpoint
