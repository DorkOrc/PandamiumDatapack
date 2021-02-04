execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 5.. run tp @s -105 20 0
execute if score @s gameplay_perms matches 5.. run experience add @s 0

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
