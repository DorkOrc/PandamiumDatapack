execute as @e[type=marker,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=parkour.node] if data entity @s data.checkpoint store result score @s parkour.node_id run data get entity @s data.checkpoint

#

scoreboard players operation @s parkour.checkpoint = <marker_checkpoint> variable
scoreboard players set @s parkour.timer_ticks 0
scoreboard players enable @s parkour.quit
scoreboard players enable @s parkour.restart

#

execute if score @s parkour.checkpoint matches 0 run function pandamium:misc/parkour/parkour_1/start_setup
execute if score @s parkour.checkpoint matches 100 run function pandamium:misc/parkour/parkour_2/start_setup

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2

function pandamium:misc/count_filled_inventory_slots
execute if data storage pandamium:temp count.NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] if score <empty_inventory_slots> variable matches 1.. in pandamium:staff_world run function pandamium:misc/unequip_chest_slot
execute if data storage pandamium:temp count.NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] if score <empty_inventory_slots> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your elytra!","color":"dark_aqua"}]
scoreboard players reset @s detect.aviate

data modify storage pandamium:temp UUID set from storage pandamium:temp count.NBT.UUID
execute as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/parkour/kill_ender_pearl
