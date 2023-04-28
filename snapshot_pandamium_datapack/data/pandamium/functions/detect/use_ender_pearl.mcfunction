execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat
execute if entity @s[x=-370,y=43,z=-83,dx=152,dy=6,dz=137,predicate=pandamium:in_dimension/overworld] run advancement grant @s only pandamium:detect/maze/cheat

scoreboard players reset @s detect.use.ender_pearl
advancement revoke @s only pandamium:detect/use_ender_pearl
