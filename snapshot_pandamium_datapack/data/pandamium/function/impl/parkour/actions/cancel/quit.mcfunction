execute store result score <checkpoint> variable run scoreboard players get @s parkour.checkpoint

function pandamium:impl/parkour/actions/cancel

execute if score <checkpoint> variable matches 300..399 in overworld positioned -300.5 136 197.0 rotated 0 0 run function pandamium:utils/teleport/here

tellraw @s [{"text":"[Parkour] ","color":"dark_green"},{"text":"Your parkour session was ended!","color":"green"}]
