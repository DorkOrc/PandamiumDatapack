execute if score <auto_jail_type> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," was automatically jailed for ",{"nbt":"reason","storage":"pandamium:jail","bold":true},"."]
execute if score <auto_jail_type> variable matches 1 run tellraw @s [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},"You were automatically jailed for ",{"nbt":"reason","storage":"pandamium:jail","bold":true},"."]

function pandamium:misc/get_jailed
scoreboard players set @s jailed 2
scoreboard players set @s cheater 1

execute unless entity @p[scores={staff_perms=1..}] run function pandamium:misc/jail/log_auto_jail
