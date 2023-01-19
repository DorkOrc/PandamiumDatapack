# Due to a MC bug with detecting hitboxes with 0 size, cannot target a marker entity with [distance=0]
tag @s add teleport.random.player
execute in overworld run summon marker 0. 0 0. {Tags:["teleport.random.marker"]}
execute in overworld as @e[type=marker,x=0,y=0,z=0,distance=..0.1,tag=teleport.random.marker,limit=1] in overworld run function pandamium:misc/teleport/random/teleport_marker
tag @s remove teleport.random.player

execute at @s run playsound block.portal.travel ambient @s
scoreboard players set @s rtp_cooldown 200
