execute store success score <is_invisible> variable if data entity @s {Invisible:1b}
execute if score <is_invisible> variable matches 0 run data merge entity @s {Invisible:1b,Invulnerable:1b}
execute if score <is_invisible> variable matches 1 run data merge entity @s {Invisible:0b,Invulnerable:0b}

particle wax_off ~ ~ ~ 0.2 0.2 0.2 0 10
execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Frame Visibility]","color":"dark_green"},{"text":" Toggled the visibility of the item frame you are looking at!","color":"green"}]
