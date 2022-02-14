scoreboard players set @s parkour_checkpoint 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2

scoreboard players enable @s parkour_end
tellraw @s [{"text":"[Parkour] You started the parkour!","color":"aqua"},[{"text":"\n• If you get stuck, run ","color":"dark_aqua"},{"text":"/trigger parkour","color":"aqua"}," to return to your last checkpoint.\n• To quit the parkour course, run ",{"text":"/trigger parkour_end","color":"aqua"}," ",{"text":"(stops tracking time and resets checkpoints)","color":"gray"},"\n• If you ",{"text":"cheat","color":"aqua"},", your run will be ended. ",{"text":"Hover your mouse here to see what counts as cheating.","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"• Using an elytra\n• Using an ender pearl\n• Consuming a chorus fruit\n• Having the Speed, Jump Boost, Slow Falling or Levitation effects\n• Teleporting using a trigger\n• Leaving spawn\n• Changing gamemode\n• Riding an entity","color":"aqua"}}}]]
execute if score @s parkour_best_time matches 1.. run function pandamium:misc/map_specific/parkour/print_best_time

# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp NBT` from entity @s
function pandamium:misc/count_filled_inventory_slots
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] unless score <filled_inventory_slots> variable matches 36.. in pandamium:staff_world run function pandamium:misc/unequip_chest_slot
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b,id:'minecraft:elytra'}] unless score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Parkour]","color":"blue"},{"text":" Unequipped your elytra!","color":"green"}]
execute as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/map_specific/parkour/kill_ender_pearls/as_ender_pearl
