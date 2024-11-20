item replace block 5 0 0 contents from entity @s armor.chest

item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:container":{}}}
data modify block 5 0 0 item.components.minecraft:container[{slot:0}].item set from block 5 0 0 item

item modify block 5 0 0 contents {function:"minecraft:set_custom_data",tag:{pandamium:{transient_equippable:{}}}}
execute if items block 5 0 0 contents leather_chestplate[!equippable={equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"chest"}] run data modify block 5 0 0 item.components.minecraft:equippable merge value {dispensable:false,equip_sound:"minecraft:intentionally_empty"}
execute if items block 5 0 0 contents leather_chestplate[equippable={equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"chest"}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{dispensable:false,equip_sound:"minecraft:intentionally_empty",asset_id:"minecraft:leather",slot:"chest"}}}

item replace entity @s armor.chest from block 5 0 0 contents

scoreboard players add @s transient_equippable.items_equipped 1
scoreboard players set @s transient_equippable.time_since_worn 0
