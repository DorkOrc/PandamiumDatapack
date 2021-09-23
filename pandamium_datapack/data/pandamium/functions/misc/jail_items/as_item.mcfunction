# run IN pandamium:staff_world
# run AS item entity

data modify storage pandamium:temp Thrower set from entity @s Thrower

setblock 0 2 0 air
setblock 0 2 0 oak_sign{Text1:'[{"score":{"name":"<day>","objective":"global"},"color":"gray","italic":false},"/",{"score":{"name":"<month>","objective":"global"}},"/",{"score":{"name":"<year>","objective":"global"}}," at ≈ ",{"score":{"name":"<hour>","objective":"global"}},"hrs CET"]',Text2:'{"text":"Unknown Thrower","color":"gray","italic":false}'}

scoreboard players set <player_exists> variable 0
execute as @a[scores={jailed=1..}] run function pandamium:misc/jail_items/find_thrower

execute if score <player_exists> variable matches 0 run tag @s add jail_items.ignore
execute if score <player_exists> variable matches 1 run function pandamium:misc/jail_items/do_transfer
