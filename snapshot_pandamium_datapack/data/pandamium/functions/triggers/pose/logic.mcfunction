execute unless score @s gameplay_perms matches 6.. unless score @s staff_perms matches 1.. run return run function pandamium:utils/print_donator_only_message
execute unless score @s gameplay_perms matches 6.. if score @s staff_perms matches 1.. unless score @s pose matches -403 run return run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" Only donators can use that trigger! You can check out our ","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":"discord server","bold":true}," for more information on how to donate!"]," ",{"text":"[🔓]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger pose set -403"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Unlock","bold":true}," the armour stand",{"text":"\n(Staff Only)","color":"#7E7E2A"}]}}]

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. run return run function pandamium:triggers/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if entity @s[predicate=pandamium:in_spawn] run return run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

execute unless score @s staff_perms matches 1.. run scoreboard players set @s[scores={pose=-403}] pose 0
scoreboard players operation <pose> variable = @s pose
execute anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/pose/as_raycast

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function pandamium:triggers/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Pose] ","color":"dark_red"},{"text":"That is not a valid option!","color":"red"}]
