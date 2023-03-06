tag @s add source
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 unless predicate pandamium:in_dimension/staff_world store success score <returned> variable run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" This trigger is currently restricted to the staff world! ","color":"red"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger staff_world"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"The Staff World","bold":true}]}}]

#execute if score <returned> variable matches 0 unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:misc/print_donator_only_message
execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if predicate pandamium:in_spawn store success score <returned> variable run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

execute if score <returned> variable matches 0 if score @s edit_item_frame matches 1.. store success score <returned> variable run function pandamium:misc/edit_item_frame/print_menu

# Run
execute if score <returned> variable matches 0 run scoreboard players operation <function> variable = @s edit_item_frame
scoreboard players set <has_run> variable 0
execute if score <returned> variable matches 0 run function pandamium:misc/raycast/entity/item_frames/main
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 1 as @e[distance=..8,tag=raycast.target,limit=1] at @s store success score <has_run> variable run function pandamium:misc/edit_item_frame/as_target
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" You are not looking at a filled item frame!","color":"red"}]

#execute if score <returned> variable matches 0 if score <has_run> variable matches 0 run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" The item frame you are looking at does not have an item in it!","color":"red"}]
#execute if score <returned> variable matches 0 if score <has_run> variable matches 1 run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled the visibility of the item frame you are looking at!","color":"green"}]

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

function pandamium:misc/raycast/collect_garbage
tag @s remove source
scoreboard players reset @s edit_item_frame
scoreboard players enable @s edit_item_frame
