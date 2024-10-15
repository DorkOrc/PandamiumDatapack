tag @s add source

scoreboard players set <returned> variable 0
execute unless score @s gameplay_perms matches 6.. run return run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"storage":"pandamium:dictionary","nbt":"triggers.supporter_only_trigger","interpret":true}]
execute if predicate pandamium:in_spawn run return run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# Run
execute anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/frame_visibility/as_raycast

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]
