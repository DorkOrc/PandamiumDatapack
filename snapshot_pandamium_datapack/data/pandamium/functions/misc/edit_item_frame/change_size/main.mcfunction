# min = 1
# max = 8

scoreboard players set <size> variable -210
scoreboard players operation <size> variable -= <function> variable

function pandamium:misc/edit_item_frame/change_size/run

scoreboard players set <sound> variable 1
execute store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},[{"text":" Set size to ","color":"green"},{"score":{"name":"<size>","objective":"variable"}},"!"]]
