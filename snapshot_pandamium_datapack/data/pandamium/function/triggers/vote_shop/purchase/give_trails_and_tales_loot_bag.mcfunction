# run IN pandamium:staff_world

setblock 0 0 0 yellow_shulker_box{lock:{count:{max:-1}}} strict

# Get random order of items
kill @e[type=item,x=0,y=0,z=0,dx=0]
loot spawn 0 0 0 loot pandamium:loot_bundle/trails_and_tales/contents
data modify storage pandamium:temp contents set value []
execute as @e[type=item,x=0,y=0,z=0,dx=0,sort=random] run data modify storage pandamium:temp contents append from entity @s Item
kill @e[type=item,x=0,y=0,z=0,dx=0]

# Get random bundle name colour
loot replace block 0 0 0 container.0 loot pandamium:loot_bundle/trails_and_tales/bundle

# Put contents into bundle
data modify block 0 0 0 Items[0].components."minecraft:bundle_contents" set from storage pandamium:temp contents

# Give bundle to player
loot give @s mine 0 0 0 barrier[custom_data={drop_contents:true}]

# Spawn extra items
execute at @s run loot spawn ~ ~ ~ loot pandamium:loot_bundle/trails_and_tales/extras

return 1
