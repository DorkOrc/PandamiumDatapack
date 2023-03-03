# run IN pandamium:staff_world

setblock 0 0 0 yellow_shulker_box

# Get random order of items
kill @e[type=item,x=0,y=0,z=0,dx=0]
loot spawn 0 0 0 loot pandamium:loot_bundle/tails_and_trails/contents
data modify storage pandamium:temp contents set value []
execute as @e[type=item,x=0,y=0,z=0,dx=0,sort=random] run data modify storage pandamium:temp contents append from entity @s Item
kill @e[type=item,x=0,y=0,z=0,dx=0]

# Get random bundle name colour
loot replace block 0 0 0 container.0 loot pandamium:loot_bundle/tails_and_trails/bundle

# Put contents into bundle
data modify block 0 0 0 Items[0].tag.Items set from storage pandamium:temp contents

# Give bundle to player
loot give @s mine 0 0 0 air{drop_contents:1b}

# Spawn extra items
execute at @s run loot spawn ~ ~ ~ loot pandamium:loot_bundle/tails_and_trails/extras
