# run IN pandamium:staff_world

setblock 0 0 0 shulker_box
data modify storage pandamium:temp contents set value []

tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] add ignore
loot spawn 0 0 0 loot pandamium:loot_bundle/caves_and_cliffs/contents

execute as @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore,sort=random] run data modify storage pandamium:temp contents append from entity @s Item
kill @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore]
tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] remove ignore

loot replace block 0 0 0 container.0 loot pandamium:loot_bundle/caves_and_cliffs/bundle
data modify block 0 0 0 Items[0].tag.Items set from storage pandamium:temp contents

loot give @s mine 0 0 0 air{drop_contents:1b}
execute at @s run loot spawn ~ ~ ~ loot pandamium:loot_bundle/caves_and_cliffs/extras
