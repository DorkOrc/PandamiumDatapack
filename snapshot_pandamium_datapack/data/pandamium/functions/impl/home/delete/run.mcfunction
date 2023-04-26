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

execute store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}],"!"]
