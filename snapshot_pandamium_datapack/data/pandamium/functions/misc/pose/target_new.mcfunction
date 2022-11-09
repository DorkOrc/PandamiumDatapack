# run AT target

scoreboard players set <armor_stand_exists> variable 1
particle wax_off ~ ~1 ~ 0.2 0.4 0.2 0.2 10

data modify storage pandamium:temp pose.nbt set from entity @s
function pandamium:misc/pose/do_edit
