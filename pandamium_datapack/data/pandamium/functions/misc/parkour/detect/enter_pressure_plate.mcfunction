data remove storage pandamium:temp NBT
execute at @s as @e[type=marker,tag=parkour.marker,limit=1,sort=nearest,distance=..3] run data modify storage pandamium:temp NBT set from entity @s

execute if data storage pandamium:temp NBT run function pandamium:misc/parkour/at_pressure_plate

advancement revoke @s only pandamium:detect/parkour/enter_pressure_plate
