execute as @e[type=marker,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=parkour.marker] if data entity @s data.checkpoint store result score @s id run data get entity @s data.checkpoint

#

scoreboard players operation @s parkour.checkpoint = <marker_checkpoint> variable
scoreboard players set @s parkour.timer_ticks 0
scoreboard players enable @s parkour_end

#

tellraw @s [{"text":"[Parkour] You started the parkour!","color":"aqua"},[{"text":"\n• Run ","color":"dark_aqua"},{"text":"/trigger parkour","color":"aqua"}," to return to your last checkpoint or quit the parkour course.\n• If you ",{"text":"cheat","color":"aqua"},", your run will be ended. ",{"text":"Hover your mouse here to see what counts as cheating.","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"• Using an elytra\n• Using an ender pearl\n• Consuming a chorus fruit\n• Having the Speed, Jump Boost, Slow Falling or Levitation effects\n• Teleporting using a trigger\n• Leaving spawn\n• Changing gamemode\n• Riding an entity","color":"aqua"}}}]]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if score @s parkour.checkpoint matches 0 if score @s parkour_1.best_time matches 1.. run function pandamium:misc/parkour/parkour_1/print_best_time
execute if score @s parkour.checkpoint matches 100 if score @s parkour_1.best_time matches 1.. run function pandamium:misc/parkour/parkour_2/print_best_time

# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.NBT` from entity @s
function pandamium:misc/count_filled_inventory_slots
execute if data storage pandamium:temp count.NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] unless score <filled_inventory_slots> variable matches 36.. in pandamium:staff_world run function pandamium:misc/unequip_chest_slot
execute if data storage pandamium:temp count.NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] unless score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your elytra!","color":"dark_aqua"}]
scoreboard players reset @s detect.aviate

data modify storage pandamium:temp UUID set from storage pandamium:temp count.NBT.UUID
execute as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/parkour/kill_ender_pearl
