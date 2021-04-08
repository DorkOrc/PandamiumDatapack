#RUN IN pandamium:staff_world
data modify storage pandamium:jail_items NBT set from entity @s
data modify storage pandamium:jail_items Thrower set from storage pandamium:jail_items NBT.Thrower
data modify storage pandamium:jail_items Item set from storage pandamium:jail_items NBT.Item

setblock 7 64 -6 air
setblock 7 64 -6 oak_sign{Text1:'[{"score":{"name":"<day>","objective":"variable"},"color":"gray","italic":false},"/",{"score":{"name":"<month>","objective":"variable"}},"/",{"score":{"name":"<year>","objective":"variable"}}," at ≈ ",{"score":{"name":"<hour>","objective":"variable"}},"hrs UTC"]',Text2:'{"text":"Unknown Thrower","color":"gray","italic":false}'}

scoreboard players set <player_exists> variable 0
execute as @a[scores={jailed=1..}] run function pandamium:misc/jail_items/find_thrower

execute if score <player_exists> variable matches 1 run function pandamium:misc/jail_items/do_transfer

execute if score <player_exists> variable matches 0 run tag @s add jail_items.ignore
