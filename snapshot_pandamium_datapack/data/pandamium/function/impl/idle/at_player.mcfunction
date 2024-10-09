execute in pandamium:staff_world run tp @s ~ ~ ~ ~ ~
# ^ due to dimension scaling, the position is not accurate in the_nether.
# solution: divides by 8 for storing the player's last position, but ignores for everything else as it does not affect them.
data modify storage pandamium:temp idle.marker_nbt set from entity @s {}
execute as @a[distance=..0.001,scores={temp_1=0},limit=1] run function pandamium:impl/idle/as_player
