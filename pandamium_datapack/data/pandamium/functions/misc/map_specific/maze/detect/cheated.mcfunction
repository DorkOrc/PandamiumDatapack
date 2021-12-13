scoreboard players reset @s used.ender_pearl

tag @s add maze.this
execute store success score <maze.can_run> variable in overworld if entity @p[tag=maze.this,x=-370,y=43,z=-83,dx=152,dy=6,dz=137]
tag @s remove maze.this

execute if score <maze.can_run> variable matches 1 run tp @s -201 44 -14 90 0
execute if score <maze.can_run> variable matches 1 run tellraw @s [{"text":"[Maze]","color":"dark_red"},{"text":" Detected cheating!","color":"red"}]

advancement revoke @s only pandamium:maze/cheated
