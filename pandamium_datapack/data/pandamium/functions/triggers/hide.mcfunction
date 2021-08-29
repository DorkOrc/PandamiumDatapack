execute store success score @s hidden unless score @s hidden matches 1

execute if score @s hidden matches 0 run gamemode survival
execute if score @s hidden matches 0 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]

execute if score @s hidden matches 1 run gamemode creative
execute if score @s hidden matches 1 run title @s actionbar ""
execute if score @s hidden matches 1 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are now invisible. Take off your armour!","color":"yellow"}]

scoreboard players reset @s hide
scoreboard players enable @s hide
