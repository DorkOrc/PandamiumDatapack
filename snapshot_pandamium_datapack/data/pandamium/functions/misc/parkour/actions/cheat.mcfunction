execute if score @s parkour.checkpoint matches 0..99 run function pandamium:misc/parkour/parkour_1/tp_to_start
execute if score @s parkour.checkpoint matches 0..99 run tp @s
execute if score @s parkour.checkpoint matches 0..99 run function pandamium:misc/parkour/actions/cancel/cheating

# Monstrosity Parkour
# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.NBT` from entity @s
execute if score @s parkour.checkpoint matches 100..199 if score @s detect.aviate matches 1.. run function pandamium:misc/count_filled_inventory_slots
execute if score @s parkour.checkpoint matches 100..199 if score @s detect.aviate matches 1.. if score <empty_inventory_slots> variable matches 1.. in pandamium:staff_world run function pandamium:misc/unequip_chest_slot
execute if score @s parkour.checkpoint matches 100..199 if score @s detect.aviate matches 1.. if score <empty_inventory_slots> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Unequipped your elytra!","color":"red"}]
execute if score @s parkour.checkpoint matches 100..199 if score @s detect.aviate matches 1.. unless score <empty_inventory_slots> variable matches 1.. run function pandamium:misc/parkour/actions/cancel/failed_to_unequip_elytra

execute if score @s parkour.checkpoint matches 100..199 if entity @s[gamemode=adventure] run tellraw @s [{"text":"[Parkour] ","color":"dark_red"},[{"text":"Cheating was detected! Returned you to the beginning of the room and gave you a ","color":"red"},{"text":"15 second time penalty","bold":true},"."]]
execute if score @s parkour.checkpoint matches 100..199 if entity @s[gamemode=adventure] run scoreboard players add @s parkour.timer_ticks 300
execute if score @s parkour.checkpoint matches 100..199 if entity @s[gamemode=adventure] run function pandamium:misc/parkour/actions/return_to_last_checkpoint
execute if score @s parkour.checkpoint matches 100..199 unless entity @s[gamemode=adventure] run function pandamium:misc/parkour/actions/cancel/cheating

# Kill thrown ender pearls
execute if score @s detect.use.ender_pearl matches 1.. run data modify storage pandamium:temp UUID set from entity @s UUID
execute if score @s detect.use.ender_pearl matches 1.. as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/parkour/kill_ender_pearl

# Resets velocity
tp @s

execute at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0
