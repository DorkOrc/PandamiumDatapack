#execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"all_characters","storage":"pandamium:json"},"§"]}}]},"extra":[{"nbt":"coloured_characters[]","storage":"pandamium:temp","interpret":true,"separator":""}]}'

execute store result score <root_attributes> variable run data get storage pandamium:json root_attributes
execute if score <root_attributes> variable matches 1.. run function pandamium:impl/font/custom_fonts/reapply_root_attributes/main
