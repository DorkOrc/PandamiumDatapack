execute if score <home> variable matches 1 run function pandamium:impl/home/go/run/setup_1
execute if score <home> variable matches 2 run function pandamium:impl/home/go/run/setup_2
execute if score <home> variable matches 3 run function pandamium:impl/home/go/run/setup_3
execute if score <home> variable matches 4 run function pandamium:impl/home/go/run/setup_4
execute if score <home> variable matches 5 run function pandamium:impl/home/go/run/setup_5
execute if score <home> variable matches 6 run function pandamium:impl/home/go/run/setup_6
execute if score <home> variable matches 7 run function pandamium:impl/home/go/run/setup_7
execute if score <home> variable matches 8 run function pandamium:impl/home/go/run/setup_8
execute if score <home> variable matches 9 run function pandamium:impl/home/go/run/setup_9
execute if score <home> variable matches 10 run function pandamium:impl/home/go/run/setup_10

function pandamium:misc/teleport/to_scores/main
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]

execute store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",[{"text":"Home ","color":"aqua"},{"score":{"name":"<home>","objective":"variable"}}],"!"]

