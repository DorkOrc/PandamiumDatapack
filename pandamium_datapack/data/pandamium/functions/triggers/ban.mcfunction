tag @s add doing_trigger

execute if score @s ban matches 1 run tag @a[scores={staff_perms=1..}] add staff
execute if score @s ban matches 1 at @s at @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@p","color":"gray"}," (",{"score":{"name":"@p","objective":"id"},"bold":true},")."]
execute if score @s ban matches 1 run tag @a[tag=staff] remove staff

scoreboard players set <player_exists> variable 0
execute if score @s ban matches 2.. as @a if score @p[tag=doing_trigger] ban = @s id unless score @p[tag=doing_trigger] staff_perms <= @s staff_perms run scoreboard players set <player_exists> variable 1
execute if score @s ban matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @s ban matches 2.. as @a if score @p[tag=doing_trigger] ban = @s id unless score @p[tag=doing_trigger] staff_perms <= @s staff_perms run function pandamium:misc/get_banned
execute if score @s ban matches 2.. as @a if score @p[tag=doing_trigger] ban = @s id if score @p[tag=doing_trigger] staff_perms <= @s staff_perms run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," You cannot ban ",{"selector":"@s"},"!"]

tag @s remove doing_trigger
scoreboard players reset @s ban
scoreboard players enable @s ban
