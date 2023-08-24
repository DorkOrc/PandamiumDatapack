tag @s add source
scoreboard players set <returned> variable 0
scoreboard players set <sound> variable 0

execute unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:utils/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. store success score <returned> variable run function pandamium:triggers/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if entity @s[predicate=pandamium:in_spawn] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

execute unless score @s staff_perms matches 1.. run scoreboard players set @s[scores={pose=-403}] pose 0
scoreboard players operation <pose> variable = @s pose
execute if score <returned> variable matches 0 anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/pose/as_raycast

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function pandamium:triggers/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Pose] ","color":"dark_red"},{"text":"That is not a valid option!","color":"red"}]

tag @s remove source
scoreboard players reset @s pose
scoreboard players enable @s pose
