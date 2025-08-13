execute if data storage pandamium:text compound{bold:1b} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"bold":true}'
execute if data storage pandamium:text compound{italic:0b} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"italic":false}'
execute if data storage pandamium:text compound{underlined:1b} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"underlined":true}'
execute if data storage pandamium:text compound{strikethrough:1b} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"strikethrough":true}'
execute if data storage pandamium:text compound{obfuscated:1b} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"obfuscated":true}'
execute if data storage pandamium:text compound{font:"minecraft:uniform"} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"font":"minecraft:uniform"}'
execute if data storage pandamium:text compound{font:"minecraft:alt"} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"font":"minecraft:alt"}'
execute if data storage pandamium:text compound{font:"minecraft:illageralt"} in pandamium:staff_world run data modify entity @s text set value '{"entity":"@s","nbt":"text","interpret":true,"font":"minecraft:illageralt"}'
execute if data storage pandamium:text compound.color in pandamium:staff_world run function pandamium:impl/font/reapply_root_attributes/apply_colour with storage pandamium:text compound
