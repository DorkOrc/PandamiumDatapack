scoreboard players reset <marker_checkpoint> variable
execute store result score <marker_checkpoint> variable run data get storage pandamium:temp parkour.node.data.checkpoint
execute as @e[type=marker,tag=parkour.replace_block] store result score @s parkour.node_id run data get entity @s data.checkpoint

scoreboard players reset <my_next_checkpoint> variable
execute unless score @s parkour.checkpoint = @s parkour.checkpoint if data storage pandamium:temp parkour.node.data{start:1b} run scoreboard players operation <my_next_checkpoint> variable = <marker_checkpoint> variable
execute if score @s parkour.checkpoint = @s parkour.checkpoint run scoreboard players operation <my_next_checkpoint> variable = @s parkour.checkpoint
execute if score @s parkour.checkpoint = @s parkour.checkpoint run scoreboard players add <my_next_checkpoint> variable 1

execute if score @s parkour.checkpoint matches 0.. if score @s parkour.timer_ticks matches ..19 unless data storage pandamium:temp parkour.node.data{reset_timer:1b} if data storage pandamium:temp parkour.node.data{start:1b} run function pandamium:impl/parkour/actions/reset_timer
execute if score @s parkour.checkpoint matches 0.. if data storage pandamium:temp parkour.node.data{reset_timer:1b,start:1b} run function pandamium:impl/parkour/actions/reset_timer
execute if score @s parkour.checkpoint matches 0.. if data storage pandamium:temp parkour.node.data.teleport run function pandamium:impl/parkour/actions/teleport
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp parkour.node.data.checkpoint if data storage pandamium:temp parkour.node.data{start:1b} if entity @s[predicate=!pandamium:riding_entity,gamemode=!spectator,gamemode=!creative] run function pandamium:impl/parkour/actions/start
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp parkour.node.data.checkpoint unless data storage pandamium:temp parkour.node.data{start:1b} unless data storage pandamium:temp parkour.node.data{end:1b} run function pandamium:impl/parkour/actions/next_checkpoint
execute if score <marker_checkpoint> variable = <my_next_checkpoint> variable if data storage pandamium:temp parkour.node.data{end:1b} run function pandamium:impl/parkour/actions/finish
