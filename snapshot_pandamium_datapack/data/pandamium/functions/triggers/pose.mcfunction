# run AT @s

scoreboard players set <returned> variable 0
tag @s add running_trigger
scoreboard players set <sound> variable 0

execute unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:misc/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. store success score <returned> variable run function pandamium:misc/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if entity @s[predicate=pandamium:in_spawn] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

scoreboard players operation <pose> variable = @s pose

scoreboard players set <armor_stand_exists> variable 0
execute if score <returned> variable matches 0 as @e[type=armor_stand,distance=..7,limit=1,sort=nearest,tag=!pose.locked] at @s run function pandamium:misc/pose/target_new
execute if score <returned> variable matches 0 if score <armor_stand_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not find a posable armour stand nearby! You must be standing within 7 blocks of a posable armour stand to use this trigger.","color":"red"}]

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function pandamium:misc/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Pose] ","color":"dark_red"},{"text":"That is not a valid option!","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s pose
scoreboard players enable @s pose
