# # Due to a MC bug with detecting hitboxes with 0 size, cannot target a marker entity with [distance=0]
# tag @s add teleport.random.selected_player
# execute in pandamium:staff_world run summon marker 0. 0 0. {Tags:["teleport_marker"]}
# execute in pandamium:staff_world as @e[type=marker,tag=teleport_marker,x=0,y=0,z=0,distance=..0.1] in overworld run function pandamium:misc/teleport/random/teleport_marker
# tag @s remove teleport.random.selected_player

# execute at @s run playsound block.portal.travel ambient @s
scoreboard players set @s rtp_cooldown 200
tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" RTP is currently broken but we are currently trying to fix it. Sorry for the inconvenience.","color":"red"}]