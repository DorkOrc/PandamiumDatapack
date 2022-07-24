# run AT @s

execute if score @s staff_menu matches 1.. run function pandamium:triggers/staff_menu
execute if score @s toggle_spectator matches 1.. run function pandamium:triggers/toggle_spectator
execute if score @s get_guidebook matches 1.. run function pandamium:triggers/get_guidebook
execute if score @s item_clear = @s item_clear unless score @s item_clear matches 0 run function pandamium:triggers/item_clear
execute if score @s restart = @s restart unless score @s restart matches 0 run function pandamium:triggers/restart
execute if score @s player_info = @s player_info unless score @s player_info matches 0 run function pandamium:triggers/player_info
execute if score @s auto_actions_log = @s auto_actions_log unless score @s auto_actions_log matches 0 run function pandamium:triggers/auto_actions_log
execute if score @s switch_dimension = @s switch_dimension unless score @s switch_dimension matches 0 run function pandamium:triggers/switch_dimension
execute if score @s hide matches 1.. run function pandamium:triggers/hide
execute if score @s tp = @s tp unless score @s tp matches 0 run function pandamium:triggers/tp
execute if score @s pre_jail_tp matches 1.. run function pandamium:triggers/pre_jail_tp

execute if score @s staff_world matches 1.. run function pandamium:triggers/staff_world
execute if score @s homes matches ..-1 run function pandamium:triggers/force_tp_homes
execute if score @s spawnpoint matches 1.. run function pandamium:triggers/spawnpoint
execute if score @s spawnpoint matches ..-1 run function pandamium:triggers/force_tp_spawnpoint

execute if score @s jail = @s jail unless score @s jail matches 0 run function pandamium:triggers/jail
execute if score @s unjail matches 1.. run function pandamium:triggers/unjail
execute if score @s kick = @s kick unless score @s kick matches 0 run function pandamium:triggers/kick
execute if score @s ban matches 1.. run function pandamium:triggers/ban

execute if score @s inventory matches 1.. run function pandamium:triggers/inventory
execute if score @s inventory matches ..-1 run function pandamium:triggers/inventory_slots

execute if score @s enderchest matches 1.. run function pandamium:triggers/enderchest
execute if score @s enderchest matches ..-1 run function pandamium:triggers/enderchest_slots

execute if score @s container matches 1.. run function pandamium:triggers/container

execute if score @s take_enderchest matches 1.. in pandamium:staff_world run function pandamium:triggers/take_enderchest
execute if score @s take_inventory matches 1.. in pandamium:staff_world run function pandamium:triggers/take_inventory
execute if score @s take_bound_items matches 1.. in pandamium:staff_world run function pandamium:triggers/take_bound_items

# temporary trigger
execute if score @s leaderboards.chat_test = @s leaderboards.chat_test unless score @s leaderboards.chat_test matches 0 run function pandamium:triggers/leaderboards/chat_test
