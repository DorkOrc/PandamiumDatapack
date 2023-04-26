# run AT @s

scoreboard players set <returned> variable 0
tag @s add source
scoreboard players set <sound> variable 0

execute unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:utils/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. store success score <returned> variable run function pandamium:impl/triggers/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if entity @s[predicate=pandamium:in_spawn] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

scoreboard players operation <pose> variable = @s pose

execute if score <returned> variable matches 0 run function pandamium:misc/raycast/entity/armor_stand/main
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 1 positioned ~-16 ~-16 ~-16 as @e[type=armor_stand,dx=31,dy=31,dz=31,tag=raycast.target,tag=!pose.locked,limit=1] at @s run function pandamium:impl/triggers/pose/as_target
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You are not looking at a poseable armour stand!","color":"red"}]

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function pandamium:impl/triggers/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Pose] ","color":"dark_red"},{"text":"That is not a valid option!","color":"red"}]

tag @s remove source
scoreboard players reset @s pose
scoreboard players enable @s pose
