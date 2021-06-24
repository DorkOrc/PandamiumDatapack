# run IN pandamium:staff_world

data modify block 7 64 -2 Items set from entity @s EnderItems

# Clear player's enderchest.

loot replace entity @s enderchest.0 27 loot empty

setblock 0 0 0 air
tag @s add selected_player
setblock 0 0 0 oak_sign{Text1:'["",{"selector":"@p[tag=selected_player]","color":"#3F3F3F"},"\'s Ender Chest"]'}
tag @s remove selected_player
data modify block 7 64 -2 CustomName set from block 0 0 0 Text1
