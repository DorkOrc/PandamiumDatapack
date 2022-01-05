scoreboard players set <player_info_can_run> variable 1

execute if score @s player_info matches -2 run scoreboard players operation @s playtime = @s selected_player
execute if score @s player_info matches -2 run function pandamium:triggers/playtime

execute if score @s player_info matches -3 run scoreboard players operation @s vote = @s selected_player
execute if score @s player_info matches -3 run function pandamium:triggers/vote

execute if score @s player_info matches -4 run scoreboard players operation @s spawnpoint = @s selected_player
execute if score @s player_info matches -4 run function pandamium:triggers/spawnpoint

execute if score @s player_info matches -5 run scoreboard players operation @s jail = @s selected_player
execute if score @s player_info matches -5 run function pandamium:triggers/jail

execute if score @s player_info matches -6 run scoreboard players operation @s jail = @s selected_player
execute if score @s player_info matches -6 run scoreboard players operation @s jail *= <-1> variable
execute if score @s player_info matches -6 run function pandamium:triggers/jail

execute if score @s player_info matches -7 run scoreboard players operation @s unjail = @s selected_player
execute if score @s player_info matches -7 run function pandamium:triggers/unjail

execute if score @s player_info matches -8 run scoreboard players operation @s kick = @s selected_player
execute if score @s player_info matches -8 run function pandamium:triggers/kick

execute if score @s player_info matches -9 if score @s staff_perms matches 2.. run scoreboard players operation @s ban = @s selected_player
execute if score @s player_info matches -9 if score @s staff_perms matches 2.. run function pandamium:triggers/ban
execute if score @s player_info matches -9 unless score @s staff_perms matches 2.. run scoreboard players set <player_info_can_run> variable 0

execute if score @s player_info matches -10 run scoreboard players operation @s inventory = @s selected_player
execute if score @s player_info matches -10 run function pandamium:triggers/inventory

execute if score @s player_info matches -11 run scoreboard players operation @s enderchest = @s selected_player
execute if score @s player_info matches -11 run function pandamium:triggers/enderchest

execute if score @s player_info matches -12 run scoreboard players operation @s homes = @s selected_player
execute if score @s player_info matches -12 run function pandamium:triggers/show_homes

execute if score @s player_info matches -13 run scoreboard players operation @s get_guidebook = @s selected_player
execute if score @s player_info matches -13 run function pandamium:triggers/get_guidebook

execute if score @s player_info matches -14 run scoreboard players operation @s discord = @s selected_player
execute if score @s player_info matches -14 run function pandamium:triggers/discord

execute if score @s player_info matches -15 as @p[tag=player_info_selected_player] run function pandamium:misc/teleport/spawn
execute if score @s player_info matches -15 run tellraw @s [{"text":"[Player Info]","color":"gold"},[{"text":" Teleported ","color":"yellow"},{"selector":"@p[tag=player_info_selected_player]"}," to spawn!"]]

execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run scoreboard players operation @s tp = @s selected_player
execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run scoreboard players operation @s tp *= <-1> variable
execute if score @s player_info matches -16 if score @s staff_perms matches 2.. run function pandamium:triggers/tp
execute if score @s player_info matches -16 unless score @s staff_perms matches 2.. run scoreboard players set <player_info_can_run> variable 0

execute if score @s player_info matches -17 if score @s staff_perms matches 2.. run scoreboard players operation @s pre_jail_tp = @s selected_player
execute if score @s player_info matches -17 if score @s staff_perms matches 2.. run function pandamium:triggers/pre_jail_tp
execute if score @s player_info matches -17 unless score @s staff_perms matches 2.. run scoreboard players set <player_info_can_run> variable 0

execute if score @s player_info matches -18 if score @s staff_perms matches 3.. run scoreboard players operation @s take_inventory = @s selected_player
execute if score @s player_info matches -18 if score @s staff_perms matches 3.. run function pandamium:triggers/take_inventory
execute if score @s player_info matches -18 unless score @s staff_perms matches 3.. run scoreboard players set <player_info_can_run> variable 0 

execute if score @s player_info matches -19 if score @s staff_perms matches 3.. run scoreboard players operation @s take_enderchest = @s selected_player
execute if score @s player_info matches -19 if score @s staff_perms matches 3.. run function pandamium:triggers/take_enderchest
execute if score @s player_info matches -19 unless score @s staff_perms matches 3.. run scoreboard players set <player_info_can_run> variable 0

execute if score @s player_info matches -20 if score @s staff_perms matches 3.. run scoreboard players operation @s take_bound_items = @s selected_player
execute if score @s player_info matches -20 if score @s staff_perms matches 3.. run function pandamium:triggers/take_bound_items
execute if score @s player_info matches -20 unless score @s staff_perms matches 3.. run scoreboard players set <player_info_can_run> variable 0

execute if score @s player_info matches ..-21 run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <player_info_can_run> variable matches 0 run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" You cannot use that trigger!","color":"red"}]
