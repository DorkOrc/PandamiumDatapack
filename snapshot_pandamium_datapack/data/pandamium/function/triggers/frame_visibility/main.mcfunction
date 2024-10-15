tag @s add source

scoreboard players set <returned> variable 0
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"storage":"pandamium:dictionary","nbt":"triggers.supporter_only_trigger","interpret":true}]
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if predicate pandamium:in_spawn run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]

# Run
execute if score <returned> variable matches 0 anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/frame_visibility/as_raycast

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

tag @s remove source
scoreboard players reset @s frame_visibility
scoreboard players enable @s frame_visibility
