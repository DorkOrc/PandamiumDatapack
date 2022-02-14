scoreboard players reset @s detect.used.ender_pearl

tag @s add maze.this
execute store success score <in_maze> variable in overworld if entity @p[tag=maze.this,x=-370,y=43,z=-83,dx=152,dy=6,dz=137]
tag @s remove maze.this

execute if score <in_maze> variable matches 1 run data modify storage pandamium:temp NBT set from entity @s
execute if score <in_maze> variable matches 1 as @e[type=ender_pearl,x=-370,y=43,z=-83,dx=152,dy=6,dz=137] run function pandamium:misc/map_specific/parkour/kill_ender_pearls/as_ender_pearl

execute if score <in_maze> variable matches 1 run tp @s -201 44 -14 90 0
execute if score <in_maze> variable matches 1 run tellraw @s [{"text":"[Maze]","color":"dark_red"},{"text":" Detected cheating!","color":"red"}]

advancement revoke @s only pandamium:detect/maze/cheated
