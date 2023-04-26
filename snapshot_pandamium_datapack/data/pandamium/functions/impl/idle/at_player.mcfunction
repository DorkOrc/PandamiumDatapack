execute in pandamium:staff_world run tp @s 0 0 0 ~ ~
data modify storage pandamium:temp idle.rotation set from entity @s Rotation
execute as @p run function pandamium:impl/idle/as_player
