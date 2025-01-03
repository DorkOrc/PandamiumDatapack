item replace block 5 0 0 contents from entity @s armor.feet

item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:container":{}}}
data modify block 5 0 0 item.components.minecraft:container[{slot:0}].item set from block 5 0 0 item

item modify block 5 0 0 contents [{function:"minecraft:set_custom_data",tag:{pandamium:{transient_equippable:{}}}},{function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}]
execute if items block 5 0 0 contents leather_boots[!equippable={equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"feet"}] run data modify block 5 0 0 item.components.minecraft:equippable merge value {dispensable:false,equip_sound:"minecraft:intentionally_empty"}
execute if items block 5 0 0 contents leather_boots[equippable={equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"feet"}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{dispensable:false,equip_sound:"minecraft:intentionally_empty",asset_id:"minecraft:leather",slot:"feet"}}}

item replace entity @s armor.feet from block 5 0 0 contents

scoreboard players add @s transient_equippable.items_equipped 1
scoreboard players set @s transient_equippable.time_since_worn 0
