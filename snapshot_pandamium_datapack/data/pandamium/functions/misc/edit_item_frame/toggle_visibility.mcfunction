execute store success score <is_invisible> variable if data entity @s {Invisible:1b}

execute if score <is_invisible> variable matches 0 run data merge entity @s {Invisible:1b,Invulnerable:1b}
execute if score <is_invisible> variable matches 1 run data merge entity @s {Invisible:0b,Invulnerable:0b}

scoreboard players set <sound> variable 1
execute store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled Invisible!","color":"green"}]
