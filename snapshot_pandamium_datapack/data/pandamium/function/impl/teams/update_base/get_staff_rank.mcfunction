scoreboard players set <got_rank> variable 1

execute if score @s staff_rank matches 1 run data modify storage pandamium:temp arguments merge value {color:"yellow",prefix:'"Helper | "'}
execute if score @s staff_rank matches 2 run data modify storage pandamium:temp arguments merge value {color:"gold",prefix:'"Mod | "'}
execute if score @s staff_rank matches 3 run data modify storage pandamium:temp arguments merge value {color:"gold",prefix:'["",{"text":"Sr. Mod","bold":true}," | "]'}
execute if score @s staff_rank matches 4 run data modify storage pandamium:temp arguments merge value {color:"red",prefix:'["",{"text":"Admin","bold":true}," | "]'}
execute if score @s staff_rank matches 5 run data modify storage pandamium:temp arguments merge value {color:"dark_red",prefix:'["",{"text":"Owner","bold":true}," | "]'}
