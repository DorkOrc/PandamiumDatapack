# run AT player

scoreboard players set <returned> variable 0
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if predicate pandamium:in_spawn run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]

# Run
scoreboard players set <has_run> variable 0
execute if score <returned> variable matches 0 as @e[type=#item_frames,limit=1,sort=nearest,distance=..6,nbt={Item:{}}] store success score <has_run> variable run function pandamium:misc/toggle_item_frame_visibility

execute if score <returned> variable matches 0 if score <has_run> variable matches 0 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" Could not find a filled item frame nearby to edit! You must be standing within 6 blocks of a filled item frame to use this trigger.","color":"red"}]
execute if score <returned> variable matches 0 if score <has_run> variable matches 1 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_green"},{"text":" Toggled the visibility of the nearest filled item frame!","color":"green"}]

#

scoreboard players reset @s frame_visibility
scoreboard players enable @s frame_visibility
