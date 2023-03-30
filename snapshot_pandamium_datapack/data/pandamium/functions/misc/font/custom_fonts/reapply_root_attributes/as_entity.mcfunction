data modify entity @s text set from block 3 0 0 front_text.messages[0]
execute if data storage pandamium:json root_attributes{bold:1b} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"bold":true}'
execute if data storage pandamium:json root_attributes{italic:0b} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"italic":false}'
execute if data storage pandamium:json root_attributes{italic:1b} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"italic":true}'
execute if data storage pandamium:json root_attributes{underlined:1b} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"underlined":true}'
execute if data storage pandamium:json root_attributes{strikethrough:1b} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"strikethrough":true}'
execute if data storage pandamium:json root_attributes{font:"minecraft:default"} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"font":"minecraft:default"}'
execute if data storage pandamium:json root_attributes{font:"minecraft:uniform"} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"font":"minecraft:uniform"}'
execute if data storage pandamium:json root_attributes{font:"minecraft:alt"} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"font":"minecraft:alt"}'
execute if data storage pandamium:json root_attributes{font:"minecraft:illageralt"} in pandamium:staff_world run data modify entity @s text set value '{"nbt":"text","entity":"@s","interpret":true,"font":"minecraft:illageralt"}'

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set from entity @s text

kill
