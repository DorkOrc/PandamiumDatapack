execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 5.. run scoreboard objectives setdisplay sidebar playtime_hours
execute if score @s gameplay_perms matches 5.. run scoreboard players set <sidebar> variable 2
execute if score @s gameplay_perms matches 5.. run scoreboard players set <sidebar_timer> variable 600
execute if score @s gameplay_perms matches 5.. run execute as @s run tellraw @a [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},{"selector":"@s"}," toggled ",{"text":"top playtime","color":"aqua"}," for ",{"text":"30 seconds","color":"aqua"},"!"]

scoreboard players reset @s top_playtime
scoreboard players enable @s top_playtime
