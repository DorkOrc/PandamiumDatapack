# arguments: magnitude
# outputs:
# - storage pandamium:temp vector

$execute in pandamium:staff_world positioned 0. 0. 0. positioned ^ ^ ^$(magnitude) summon marker if function pandamium:utils/kill run data modify storage pandamium:temp vector set from entity @s Pos
