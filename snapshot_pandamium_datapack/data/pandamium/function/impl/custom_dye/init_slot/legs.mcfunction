item replace block 5 0 0 contents from entity @s armor.legs

item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:container":{}}}
data modify block 5 0 0 item.components.minecraft:container[{slot:0}].item set from block 5 0 0 item

item modify block 5 0 0 contents {function:"minecraft:set_custom_data",tag:{pandamium:{custom_dye:{}}}}
execute if items block 5 0 0 contents leather_leggings[!equippable={equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"legs"}] run data modify block 5 0 0 item.components.minecraft:equippable merge value {dispensable:false,equip_sound:"minecraft:intentionally_empty"}
execute if items block 5 0 0 contents leather_leggings[equippable={equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"legs"}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{dispensable:false,equip_sound:"minecraft:intentionally_empty",model:"minecraft:leather",slot:"legs"}}}

item replace entity @s armor.legs from block 5 0 0 contents
