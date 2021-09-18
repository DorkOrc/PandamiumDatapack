# run IN pandamium:staff_world

setblock 0 0 0 shulker_box
setblock 0 1 0 oak_sign
tag @s add this
data merge block 0 1 0 {Text1:'[{"text":"","color":"white","italic":false},{"selector":"@e[tag=this,limit=1]"}]'}
tag @s remove this

item replace block 0 0 0 container.0 with clock{display:{Name:'{"color":"gold","italic":false,"text":"Stored Pet Item"}'},Enchantments:[{}],pandamium:{stored_pet:{}}}
function pandamium:misc/store_pet/get_entity_id
data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 1 0 Text1
data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"color":"dark_gray","italic":false,"text":"Hold this in your main hand and "}]'
data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"color":"dark_gray","italic":false,"text":"run "},{"text":"/trigger ","color":"gray"},{"text":"pet.spawn","color":"aqua"}," to spawn it!"]'

data modify block 0 0 0 Items[0].tag.pandamium.stored_pet merge from entity @s
data remove block 0 0 0 Items[0].tag.pandamium.stored_pet.Pos
data remove block 0 0 0 Items[0].tag.pandamium.stored_pet.Motion

loot give @p[tag=running_trigger] mine 0 0 0 air{drop_contents:1b}
execute unless entity @p[tag=running_trigger] run loot spawn 0 0 0 mine 0 0 0 air{drop_contents:1b}
execute unless entity @p[tag=running_trigger] run tp @e[type=item,limit=1,x=0,y=0,z=0,distance=..1] @s

tp 0 -1000 0
kill
