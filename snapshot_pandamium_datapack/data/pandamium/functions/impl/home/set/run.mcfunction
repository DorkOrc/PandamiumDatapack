data modify storage pandamium:temp nbt set from entity @s
execute store result score <home_x> variable run data get storage pandamium:temp nbt.Pos[0]
execute store result score <home_y> variable run data get storage pandamium:temp nbt.Pos[1]
execute store result score <home_z> variable run data get storage pandamium:temp nbt.Pos[2]
scoreboard players operation <home_d> variable = @s in_dimension

execute if score <home> variable matches 1 run function pandamium:impl/home/set/run/set_1
execute if score <home> variable matches 2 run function pandamium:impl/home/set/run/set_2
execute if score <home> variable matches 3 run function pandamium:impl/home/set/run/set_3
execute if score <home> variable matches 4 run function pandamium:impl/home/set/run/set_4
execute if score <home> variable matches 5 run function pandamium:impl/home/set/run/set_5
execute if score <home> variable matches 6 run function pandamium:impl/home/set/run/set_6
execute if score <home> variable matches 7 run function pandamium:impl/home/set/run/set_7
execute if score <home> variable matches 8 run function pandamium:impl/home/set/run/set_8
execute if score <home> variable matches 9 run function pandamium:impl/home/set/run/set_9
execute if score <home> variable matches 10 run function pandamium:impl/home/set/run/set_10

scoreboard players operation <dimension> variable = <home_d> variable
function pandamium:utils/get/dimension_name/from_score
execute unless score @s hide_coordinates matches 1 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]
execute if score @s hide_coordinates matches 1 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]
