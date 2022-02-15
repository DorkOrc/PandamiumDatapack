scoreboard players reset @s parkour_end

scoreboard players reset @s parkour_checkpoint
scoreboard players reset @s parkour_ticks

data modify storage pandamium:temp NBT set from entity @s
execute as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/map_specific/parkour/kill_ender_pearls/as_ender_pearl

title @s actionbar ""
tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Ended parkour!","color":"red"}]
