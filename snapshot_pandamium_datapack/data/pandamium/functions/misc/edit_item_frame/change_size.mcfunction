scoreboard players set <size> variable -110
execute store result entity @s transformation.scale[] float 0.5 run scoreboard players operation <size> variable -= <function> variable
execute store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},[{"text":" Set size to ","color":"green"},{"score":{"name":"<size>","objective":"variable"}},"!"]]
