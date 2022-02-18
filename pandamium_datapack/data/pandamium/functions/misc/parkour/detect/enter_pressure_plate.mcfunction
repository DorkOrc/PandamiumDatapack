#tellraw @s [{"text":"[Parkour] ","color":"aqua"},{"text":"detect: ","color":"gray"},{"text":"parkour/v2/enter_pressure_plate","color":"dark_aqua"}]

data remove storage pandamium:temp NBT
execute at @s as @e[type=marker,tag=parkour.marker,limit=1,sort=nearest,distance=..3] run data modify storage pandamium:temp NBT set from entity @s

scoreboard players reset <marker_checkpoint> variable
execute store result score <marker_checkpoint> variable run data get storage pandamium:temp NBT.data.checkpoint

scoreboard players reset <my_next_checkpoint> variable
execute unless score @s parkour.checkpoint = @s parkour.checkpoint if data storage pandamium:temp NBT.data{start:1b} run scoreboard players operation <my_next_checkpoint> variable = <marker_checkpoint> variable
execute if score @s parkour.checkpoint = @s parkour.checkpoint run scoreboard players operation <my_next_checkpoint> variable = @s parkour.checkpoint
execute if score @s parkour.checkpoint = @s parkour.checkpoint run scoreboard players add <my_next_checkpoint> variable 1

#

execute if score @s parkour.checkpoint matches 0.. if data storage pandamium:temp NBT.data{reset_timer:1b,start:1b} run scoreboard players set @s parkour.timer_ticks 0
execute if score @s parkour.checkpoint matches 0.. if data storage pandamium:temp NBT.data.teleport run function pandamium:misc/parkour/actions/teleport
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp NBT.data.checkpoint if data storage pandamium:temp NBT.data{start:1b} if entity @s[predicate=!pandamium:is_riding_entity,gamemode=!spectator,gamemode=!creative] run function pandamium:misc/parkour/actions/start
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp NBT.data.checkpoint unless data storage pandamium:temp NBT.data{start:1b} unless data storage pandamium:temp NBT.data{end:1b} run function pandamium:misc/parkour/actions/next_checkpoint
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp NBT.data{end:1b} run function pandamium:misc/parkour/actions/schedule_finish

#

advancement revoke @s only pandamium:detect/parkour/enter_pressure_plate
