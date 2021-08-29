tellraw @s [{"text":" ","color":"yellow"},{"nbt":"print_list[0].username","storage":"pandamium:jail","color":"yellow"}," at ≈ ",[{"nbt":"print_list[0].date[3]","storage":"pandamium:jail","color":"yellow"}," hrs UTC"]," on ",[{"nbt":"print_list[0].date[2]","storage":"pandamium:jail","color":"yellow"},"/",{"nbt":"print_list[0].date[1]","storage":"pandamium:jail"},"/",{"nbt":"print_list[0].date[0]","storage":"pandamium:jail"}]," for ",{"nbt":"print_list[0].reason","storage":"pandamium:jail","bold":true,"color":"yellow"}]

data remove storage pandamium:jail print_list[0]
execute if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_helper_auto_jail_log_iter
