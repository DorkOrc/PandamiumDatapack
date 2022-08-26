execute store success score <in_maze> variable in overworld if entity @s[x=-370,y=43,z=-83,dx=152,dy=6,dz=137,predicate=pandamium:in_dimension/overworld]

execute if score <in_maze> variable matches 1 run kill @e[type=ender_pearl,x=-370,y=43,z=-83,dx=152,dy=6,dz=137]
execute if score <in_maze> variable matches 1 run tp @s -201 44 -14 90 0
execute if score <in_maze> variable matches 1 run tellraw @s [{"text":"[Maze]","color":"dark_red"},{"text":" Detected cheating!","color":"red"}]

advancement revoke @s only pandamium:detect/maze/cheat
