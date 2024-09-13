scoreboard players set @s tablist_value -1

execute unless score @s idle.time matches 1.. run return run scoreboard players display numberformat @s tablist_value blank
execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray"}
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray"}
