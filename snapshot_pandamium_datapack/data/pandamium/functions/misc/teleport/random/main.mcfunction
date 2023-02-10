# Due to a MC bug with detecting hitboxes with 0 size, cannot target a marker entity with [distance=0]
tag @s add teleport.random.player
execute in overworld positioned 0. 0 0. summon marker run function pandamium:misc/teleport/random/teleport_marker
tag @s remove teleport.random.player

execute at @s run playsound block.portal.travel ambient @s
scoreboard players set @s rtp_cooldown 200
