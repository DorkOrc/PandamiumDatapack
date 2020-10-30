
execute if score @s jail matches 1 run tag @a[scores={staff_perms=1..}] add staff
execute if score @s jail matches 1 at @s at @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@p","color":"gray"}," (",{"score":{"name":"@p","objective":"id"},"bold":true},")."]
execute if score @s jail matches 1 run tag @a[tag=staff] remove staff

scoreboard players set <player_exists> variable 0
execute if score @s jail matches 2.. at @a if score @s jail = @p id run scoreboard players set <player_exists> variable 1
execute if score @s jail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @s jail matches 2.. at @a if score @s jail = @p id if score @p jailed matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," This player is already jailed!"]
execute if score @s jail matches 2.. at @a if score @s jail = @p id unless score @p jailed matches 1.. run function pandamium:misc/get_jailed

scoreboard players reset @s jail
scoreboard players enable @s jail
