
execute if score @s kick matches 1 run tag @a[scores={staff_perms=1..}] add staff
execute if score @s kick matches 1 at @s at @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@p","color":"gray"}," (",{"score":{"name":"@p","objective":"id"},"bold":true},")."]
execute if score @s kick matches 1 run tag @a[tag=staff] remove staff

scoreboard players set <temp_1> variable 0
execute if score @s kick matches 2.. at @a if score @s kick = @p id run scoreboard players set <temp_1> variable 1
execute if score @s kick matches 2.. if score <temp_1> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found."]

execute if score @s kick matches 2.. at @a if score @s kick = @p id run function pandamium:misc/get_kicked

scoreboard players reset @s kick
scoreboard players enable @s kick
