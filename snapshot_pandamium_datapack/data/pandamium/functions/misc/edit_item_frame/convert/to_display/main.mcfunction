data modify storage pandamium:temp nbt set from entity @s
execute if entity @s[type=item_frame] run data modify storage pandamium:temp nbt.id set value "minecraft:item_frame"
execute if entity @s[type=glow_item_frame] run data modify storage pandamium:temp nbt.id set value "minecraft:glow_item_frame"
execute at @s align xzy positioned ~.5 ~.5 ~.5 summon item_display run function pandamium:misc/edit_item_frame/convert/to_display/as_item_display
kill
