tag @s add teleport.random.player
execute in overworld positioned 0. 0 0. summon marker run function pandamium:impl/teleport/random/teleport_marker
tag @s remove teleport.random.player

scoreboard players set @s rtp_cooldown 200
