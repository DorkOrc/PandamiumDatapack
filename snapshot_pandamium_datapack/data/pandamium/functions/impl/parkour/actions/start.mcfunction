execute as @e[type=marker,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=parkour.node] if data entity @s data.checkpoint store result score @s parkour.node_id run data get entity @s data.checkpoint

#

scoreboard players operation @s parkour.checkpoint = <marker_checkpoint> variable
scoreboard players set @s parkour.timer_ticks 0
scoreboard players enable @s parkour_quit
scoreboard players enable @s parkour_restart
function pandamium:player/teams/disable_collision
attribute @s minecraft:generic.fall_damage_multiplier base set 0

#

execute if score @s parkour.checkpoint matches 0 run function pandamium:impl/parkour/parkour_1/start_setup
execute if score @s parkour.checkpoint matches 100 run function pandamium:impl/parkour/parkour_2/start_setup
execute if score @s parkour.checkpoint matches 200 run function pandamium:impl/parkour/parkour_3/start_setup

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2

function pandamium:utils/count_filled_inventory_slots
execute if data storage pandamium:temp count.nbt.Inventory[{Slot:102b,id:"minecraft:elytra"}] if score <empty_inventory_slots> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your elytra!","color":"dark_aqua"}]
execute if data storage pandamium:temp count.nbt.Inventory[{Slot:102b,id:"minecraft:elytra"}] if score <empty_inventory_slots> variable matches 1.. run function pandamium:utils/unequip/chest
scoreboard players reset @s detect.aviate

tag @s add thrower
execute at @s as @e[type=ender_pearl,distance=..200] run function pandamium:impl/parkour/kill_ender_pearl
tag @s remove thrower

attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.scale base set 1.0
