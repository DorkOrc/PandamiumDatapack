# run IN pandamium:staff_world

setblock 0 0 0 yellow_shulker_box

# Get random order of items
tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] add ignore
loot spawn 0 0 0 loot pandamium:loot_bundle/wild/contents
data modify storage pandamium:temp contents set value []
execute as @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore,sort=random] run data modify storage pandamium:temp contents append from entity @s Item
kill @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore]
tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] remove ignore

# Get random bundle name colour
loot replace block 0 0 0 container.0 loot pandamium:loot_bundle/wild/bundle

# Put contents into bundle
data modify block 0 0 0 Items[0].components."minecraft:bundle_contents" set from storage pandamium:temp contents

# Give bundle to player
loot give @s mine 0 0 0 barrier[custom_data={drop_contents:true}]

# Spawn extra items
execute at @s run loot spawn ~ ~ ~ loot pandamium:loot_bundle/wild/extras

return 1
