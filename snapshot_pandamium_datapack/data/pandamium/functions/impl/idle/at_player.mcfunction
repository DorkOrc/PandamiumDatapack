execute in pandamium:staff_world run tp @s ~ ~ ~ ~ ~
data modify storage pandamium:temp idle.marker_nbt set from entity @s {}
execute as @a[distance=..0.001] run function pandamium:impl/idle/as_player
