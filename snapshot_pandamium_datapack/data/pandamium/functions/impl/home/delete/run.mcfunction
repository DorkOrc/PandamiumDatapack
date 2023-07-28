execute if score <home> variable matches 1 run function pandamium:impl/home/delete/run/delete_1
execute if score <home> variable matches 2 run function pandamium:impl/home/delete/run/delete_2
execute if score <home> variable matches 3 run function pandamium:impl/home/delete/run/delete_3
execute if score <home> variable matches 4 run function pandamium:impl/home/delete/run/delete_4
execute if score <home> variable matches 5 run function pandamium:impl/home/delete/run/delete_5
execute if score <home> variable matches 6 run function pandamium:impl/home/delete/run/delete_6
execute if score <home> variable matches 7 run function pandamium:impl/home/delete/run/delete_7
execute if score <home> variable matches 8 run function pandamium:impl/home/delete/run/delete_8
execute if score <home> variable matches 9 run function pandamium:impl/home/delete/run/delete_9
execute if score <home> variable matches 10 run function pandamium:impl/home/delete/run/delete_10

scoreboard players operation <dimension> variable = <home_d> variable
function pandamium:utils/get/dimension_name/from_score
execute unless score @s hide_coordinates matches 1 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}]," (previously at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]
execute if score @s hide_coordinates matches 1 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}]," (previously at ",[{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua","obfuscated":true}," ",{"score":{"name":"<home_y>","objective":"variable"}}," ",{"score":{"name":"<home_z>","objective":"variable"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]
