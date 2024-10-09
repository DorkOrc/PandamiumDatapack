execute as @e[type=marker,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=parkour.node] if data entity @s data.checkpoint store result score @s parkour.node_id run data get entity @s data.checkpoint

#

scoreboard players operation @s parkour.checkpoint = <marker_checkpoint> variable
scoreboard players set @s parkour.timer_ticks 0

scoreboard players enable @s parkour.quit
scoreboard players enable @s parkour.restart

function pandamium:player/teams/disable_collision

#

execute if score @s parkour.checkpoint matches 0 run function pandamium:impl/parkour/parkour_1/start_setup
execute if score @s parkour.checkpoint matches 100 run function pandamium:impl/parkour/parkour_2/start_setup
execute if score @s parkour.checkpoint matches 200 run function pandamium:impl/parkour/parkour_3/start_setup
execute if score @s parkour.checkpoint matches 300 run function pandamium:impl/parkour/parkour_4/start_setup

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2

execute if items entity @s armor.chest elytra if predicate pandamium:player/can_pick_up_any_item run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your elytra!","color":"dark_aqua"}]
execute if items entity @s armor.chest elytra if predicate pandamium:player/can_pick_up_any_item run function pandamium:utils/unequip/chest
scoreboard players reset @s detect.aviate

tag @s add thrower
execute at @s as @e[type=ender_pearl,distance=..200] run function pandamium:impl/parkour/kill_ender_pearl
tag @s remove thrower

attribute @s minecraft:gravity base set 0.08
attribute @s minecraft:scale base set 1.0
function pandamium:impl/custom_effects/remove_all/main
