# Prevents hackers from tracking the teleport destination

execute at @s run tp ~ 0 ~

# Only needs to run if the player stays in the same dimension and is not a spectator
# Doesn't run if the player just teleports 200 blocks away
tag @s add teleport.selected_player
execute positioned ~-200 0 ~-200 unless entity @s[dx=399,dz=399] at @a[tag=teleport.selected_player,gamemode=!spectator,x=0] run function pandamium:misc/teleport/anti_tp_exploit
tag @s remove teleport.selected_player

tp ~ ~ ~
# Resets velocity
tp @s

xp add @s 0
