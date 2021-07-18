data modify storage pandamium:temp UUID set from storage pandamium:temp Thrower
execute store success score <uuid_does_not_match> variable run data modify storage pandamium:temp UUID set from entity @s UUID
execute store success score <uuid_matches> variable if score <uuid_does_not_match> variable matches 0

execute if score <uuid_matches> variable matches 1 run tag @s add thrower
execute if score <uuid_matches> variable matches 1 in pandamium:staff_world run data merge block 0 2 0 {Text2:'[{"text":"Dropped by ","color":"gray","italic":false},{"selector":"@p[tag=thrower]","color":"gray"}]'}
execute if score <uuid_matches> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger staff_world set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"selector":"@p[tag=thrower]","color":"gray"},{"text":" threw an item in jail!","color":"gray"}]
execute if score <uuid_matches> variable matches 1 run tag @s remove thrower
execute if score <uuid_matches> variable matches 1 run scoreboard players set <player_exists> variable 1
