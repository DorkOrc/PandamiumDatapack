execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 5.. run scoreboard objectives setdisplay sidebar votes
execute if score @s gameplay_perms matches 5.. run scoreboard players set <sidebar> variable 1
execute if score @s gameplay_perms matches 5.. run scoreboard players set <sidebar_timer> variable 600
execute if score @s gameplay_perms matches 5.. run tellraw @a [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},{"selector":"@s"}," toggled ",{"text":"top votes","color":"aqua"}," for ",{"text":"30 seconds","color":"aqua"},"!"]

scoreboard players reset @s top_votes
scoreboard players enable @s top_votes
