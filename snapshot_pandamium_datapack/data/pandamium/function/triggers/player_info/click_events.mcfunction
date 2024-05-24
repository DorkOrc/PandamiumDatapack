execute if score @s player_info matches -2 run scoreboard players operation @s playtime = @s selected_player
execute if score @s player_info matches -2 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -2 run function pandamium:triggers/playtime/main

execute if score @s player_info matches -3 run scoreboard players operation @s vote = @s selected_player
execute if score @s player_info matches -3 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -3 run function pandamium:triggers/vote/main

execute if score @s player_info matches -4 run scoreboard players operation @s spawnpoint = @s selected_player
execute if score @s player_info matches -4 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -4 run function pandamium:triggers/spawnpoint/main

execute if score @s player_info matches -5 run scoreboard players operation @s jail = @s selected_player
execute if score @s player_info matches -5 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -5 run function pandamium:triggers/jail/main

execute if score @s player_info matches -6 run scoreboard players operation @s jail -= @s selected_player
execute if score @s player_info matches -6 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -6 run function pandamium:triggers/jail/main

execute if score @s player_info matches -7 run scoreboard players operation @s unjail = @s selected_player
execute if score @s player_info matches -7 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -7 run function pandamium:triggers/unjail/main

execute if score @s player_info matches -8 run scoreboard players operation @s kick = @s selected_player
execute if score @s player_info matches -8 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -8 run function pandamium:triggers/kick/main

execute if score @s player_info matches -9 if score @s staff_perms matches 2.. run scoreboard players operation @s ban = @s selected_player
execute if score @s player_info matches -9 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -9 if score @s staff_perms matches 2.. run function pandamium:triggers/ban/main

execute if score @s player_info matches -10 run scoreboard players operation @s inspect_inventory = @s selected_player
execute if score @s player_info matches -10 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -10 run function pandamium:triggers/inspect_inventory/main

execute if score @s player_info matches -11 run scoreboard players operation @s inspect_enderchest = @s selected_player
execute if score @s player_info matches -11 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -11 run function pandamium:triggers/inspect_enderchest/main

execute if score @s player_info matches -12 run scoreboard players operation @s homes = @s selected_player
execute if score @s player_info matches -12 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -12 run function pandamium:triggers/homes/main

execute if score @s player_info matches -13 run scoreboard players operation @s guidebook = @s selected_player
execute if score @s player_info matches -13 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -13 run function pandamium:triggers/guidebook/main

execute if score @s player_info matches -14 run scoreboard players operation @s discord = @s selected_player
execute if score @s player_info matches -14 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -14 run function pandamium:triggers/discord/main

execute if score @s player_info matches -15 run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -15 run function pandamium:triggers/player_info/tp_selected_player_to_spawn

execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run scoreboard players operation @s tp -= @s selected_player
execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run function pandamium:triggers/tp/main

execute if score @s player_info matches -17 if score @s staff_perms matches 2.. run scoreboard players operation @s pre_jail_tp = @s selected_player
execute if score @s player_info matches -17 if score @s staff_perms matches 2.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -17 if score @s staff_perms matches 2.. run function pandamium:triggers/pre_jail_tp/main

execute if score @s player_info matches -18 if score @s staff_perms matches 3.. run scoreboard players operation @s take_inventory = @s selected_player
execute if score @s player_info matches -18 if score @s staff_perms matches 3.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -18 if score @s staff_perms matches 3.. run function pandamium:triggers/take_inventory/main

execute if score @s player_info matches -19 if score @s staff_perms matches 3.. run scoreboard players operation @s take_enderchest = @s selected_player
execute if score @s player_info matches -19 if score @s staff_perms matches 3.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -19 if score @s staff_perms matches 3.. run function pandamium:triggers/take_enderchest/main

execute if score @s player_info matches -20 if score @s staff_perms matches 3.. run scoreboard players operation @s take_bound_items = @s selected_player
execute if score @s player_info matches -20 if score @s staff_perms matches 3.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -20 if score @s staff_perms matches 3.. run function pandamium:triggers/take_bound_items/main

execute if score @s player_info matches -21 if score @s staff_perms matches 2.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -21 if score @s staff_perms matches 2.. run function pandamium:triggers/player_info/tp_last_death_location

execute if score @s player_info matches -22 if score @s staff_perms matches 2.. run scoreboard players set <player_info.returned> variable 1
execute if score @s player_info matches -22 if score @s staff_perms matches 2.. as @a[tag=player_info.target,limit=1] run function pandamium:triggers/player_info/print_options

#

#execute if score <player_info.returned> variable matches 0 run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
