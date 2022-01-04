execute store result score <jail_hour_next> variable run data get storage pandamium:jail print_list[0].date[3]
scoreboard players add <jail_hour_next> variable 1

tellraw @s [{"nbt":"print_list[0].clickEvent","storage":"pandamium:jail","interpret":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"nbt":"print_list[0].username","storage":"pandamium:jail"},"'s ",{"text":"Pre-Jail Location","bold":true}]}}," ",{"nbt":"print_list[0].username","storage":"pandamium:jail","color":"yellow"}," between ",[{"nbt":"print_list[0].date[3]","storage":"pandamium:jail","color":"yellow"},":00"]," and ",[{"score":{"name":"<jail_hour_next>","objective":"variable"},"color":"yellow"},":00 UTC"]," on ",[{"nbt":"print_list[0].date[2]","storage":"pandamium:jail","color":"yellow"},"/",{"nbt":"print_list[0].date[1]","storage":"pandamium:jail"},"/",{"nbt":"print_list[0].date[0]","storage":"pandamium:jail"}]," for ",{"nbt":"print_list[0].reason","storage":"pandamium:jail","bold":true,"color":"red"}]

data remove storage pandamium:jail print_list[0]
execute if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_mod_auto_jail_log_iter
