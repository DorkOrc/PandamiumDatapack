#before teleporting, this function should run to prevent hackers from tracking the teleport destination
#only needs to run if the player stays in the same dimension and is not a spectator
tag @s add teleport.selected_player
execute at @a[tag=teleport.selected_player,gamemode=!spectator,x=0] run function pandamium:misc/teleport/anti_tp_exploit
tag @s remove teleport.selected_player

tp ~ ~ ~
#resets velocity
tp @s

xp add @s 0
