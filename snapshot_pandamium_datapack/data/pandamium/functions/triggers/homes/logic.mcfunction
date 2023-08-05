execute if score @s homes matches ..-11 run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# print own homes
execute if score @s homes matches 1 run function pandamium:triggers/homes/print_menu/normal/main

# print other players' homes
execute if score @s homes matches 2.. run function pandamium:triggers/homes/select_player

# teleport to other players' homes
execute if score @s homes matches -10..-1 run function pandamium:triggers/homes/teleport_to_target_home/main
