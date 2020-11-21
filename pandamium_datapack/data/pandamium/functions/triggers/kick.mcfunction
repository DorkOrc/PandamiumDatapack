tag @s add doing_trigger

execute if score @p[tag=doing_trigger] kick matches 1 run tag @a[scores={staff_perms=1..}] add staff
execute if score @p[tag=doing_trigger] kick matches 1 at @p[tag=doing_trigger] as @p[tag=!staff] run tellraw @p[tag=doing_trigger] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@s","color":"gray"}," (",{"score":{"name":"@s","objective":"id"},"bold":true},")."]
execute if score @p[tag=doing_trigger] kick matches 1 run tag @a[tag=staff] remove staff

scoreboard players set <player_exists> variable 0
execute if score @p[tag=doing_trigger] kick matches 2.. as @a if score @p[tag=doing_trigger] kick = @s id run scoreboard players set <player_exists> variable 1
execute if score @p[tag=doing_trigger] kick matches 2.. if score <player_exists> variable matches 0 run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @p[tag=doing_trigger] kick matches 2.. as @a if score @p[tag=doing_trigger] kick = @s id run function pandamium:misc/get_kicked

tag @s remove doing_trigger
scoreboard players reset @s kick
scoreboard players enable @s kick
