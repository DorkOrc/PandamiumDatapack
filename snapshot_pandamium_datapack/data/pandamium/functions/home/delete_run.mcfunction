execute if score <home> variable matches 1 run function pandamium:home/delete/delete_1
execute if score <home> variable matches 2 run function pandamium:home/delete/delete_2
execute if score <home> variable matches 3 run function pandamium:home/delete/delete_3
execute if score <home> variable matches 4 run function pandamium:home/delete/delete_4
execute if score <home> variable matches 5 run function pandamium:home/delete/delete_5
execute if score <home> variable matches 6 run function pandamium:home/delete/delete_6
execute if score <home> variable matches 7 run function pandamium:home/delete/delete_7
execute if score <home> variable matches 8 run function pandamium:home/delete/delete_8
execute if score <home> variable matches 9 run function pandamium:home/delete/delete_9
execute if score <home> variable matches 10 run function pandamium:home/delete/delete_10

tellraw @s [{"text":"","color":"green"},{"text":"[Delhome]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}],"!"]
