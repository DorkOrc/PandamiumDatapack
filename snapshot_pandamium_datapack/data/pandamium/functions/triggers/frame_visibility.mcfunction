# run AT player

scoreboard players set <returned> variable 0
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if predicate pandamium:in_spawn run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]

# Run
scoreboard players set <has_run> variable 0
execute if score <returned> variable matches 0 run function pandamium:misc/raycast/item_frame/main
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 1 as @e[type=#pandamium:item_frames,x=0,tag=raycast.selected,nbt={Item:{}},limit=1] at @s store success score <has_run> variable run function pandamium:misc/toggle_item_frame_visibility
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You are not looking at a filled item frame!","color":"red"}]

execute if score <returned> variable matches 0 if score <has_run> variable matches 0 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" The item frame you are looking at does not have an item in it!","color":"red"}]
execute if score <returned> variable matches 0 if score <has_run> variable matches 1 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_green"},{"text":" Toggled the visibility of the nearest filled item frame!","color":"green"}]

scoreboard players reset @s frame_visibility
scoreboard players enable @s frame_visibility
