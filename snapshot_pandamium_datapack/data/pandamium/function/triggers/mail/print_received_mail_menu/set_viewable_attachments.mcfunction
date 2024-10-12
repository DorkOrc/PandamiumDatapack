# arguments: id

$execute if data storage pandamium:temp attached_items[{private:{id:$(id)}}] run data modify storage pandamium:temp attached_items[{private:{id:$(id)}}].__viewable__ set value 1b

execute unless data storage pandamium:temp attached_items[{__viewable__:1b}] run return 0

execute unless data storage pandamium:temp attached_items[0] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[0].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/display_name/from_id with storage pandamium:temp attached_items[0].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[0].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[0].name set from block 3 0 0 front_text.messages[0]

execute unless data storage pandamium:temp attached_items[1] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[1].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[1].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[1].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[1].name set from block 3 0 0 front_text.messages[0]

execute unless data storage pandamium:temp attached_items[2] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[2].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[2].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[2].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[2].name set from block 3 0 0 front_text.messages[0]

execute unless data storage pandamium:temp attached_items[3] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[3].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[3].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[3].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[3].name set from block 3 0 0 front_text.messages[0]

execute unless data storage pandamium:temp attached_items[4] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[4].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[4].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[4].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[4].name set from block 3 0 0 front_text.messages[0]

execute unless data storage pandamium:temp attached_items[5] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[5].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[5].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"attached_items[5].name","interpret":true},{"text":" (","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," 🫳)"],"color":"gray","font":"minecraft:uniform","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"username","color":"gray"}," took this item"]}}]'
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[5].name set from block 3 0 0 front_text.messages[0]
