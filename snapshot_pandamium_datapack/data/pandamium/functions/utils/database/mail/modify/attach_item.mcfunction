# arguments: from

execute unless data storage pandamium.db:mail selected run return fail

$execute unless data $(from) run return fail
$data modify storage pandamium:temp item set from $(from)

execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
execute in pandamium:staff_world run data modify block 5 0 0 item set from storage pandamium:temp item

execute in pandamium:staff_world unless data block 5 0 0 item.id run return fail

# store item
data modify storage pandamium.db:mail selected.entry.data.items append value {}
execute store result storage pandamium.db:mail selected.entry.data.items[-1].stored_item_id int 1 run function pandamium:utils/database/stored_items/load_new
execute in pandamium:staff_world run function pandamium:utils/database/stored_items/modify/set_item/from_block {x:5,y:0,z:0,slot:"container.0"}
function pandamium:utils/database/stored_items/save

# get display name
execute in pandamium:staff_world run summon item 3.5 0.0 0.5 {Item:{id:"minecraft:stone"},Tags:["mail.added_item"]}
execute in pandamium:staff_world as @e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1] run function pandamium:impl/database/mail/modify/attach_item/as_item with storage pandamium.db:mail selected.entry.data.items[-1]

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:written_book_content".title.text run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:written_book_content\\".title.text","italic":true}'
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:item_name" run data modify block 3 0 0 front_text.messages[1] set value '[{"text":"","italic":true},{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:item_name\\"","interpret":true}]'
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:custom_name" run data modify block 3 0 0 front_text.messages[1] set value '[{"text":"","italic":true},{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:custom_name\\"","interpret":true}]'

execute in pandamium:staff_world run data modify storage pandamium:temp item_display_name set from block 3 0 0 front_text.messages[1]
execute in pandamium:staff_world if data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world unless data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[1]

# filter item components for the data necessary for item hover event
data modify storage pandamium:templates macro.id__count__components.components set value {}

data modify storage pandamium:templates macro.id__count__components.components."minecraft:damage" set from storage pandamium:temp item.components."minecraft:damage"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:unbreakable" set from storage pandamium:temp item.components."minecraft:unbreakable"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:enchantments" set from storage pandamium:temp item.components."minecraft:enchantments"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:stored_enchantments" set from storage pandamium:temp item.components."minecraft:stored_enchantments"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:custom_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:lore" set from storage pandamium:temp item.components."minecraft:lore"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:dyed_color" set from storage pandamium:temp item.components."minecraft:dyed_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers" set from storage pandamium:temp item.components."minecraft:attribute_modifiers"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers".modifiers[].uuid
data modify storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents" set from storage pandamium:temp item.components."minecraft:bundle_contents"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components
data modify storage pandamium:templates macro.id__count__components.components."minecraft:map_id" set from storage pandamium:temp item.components."minecraft:map_id"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:potion_contents" set from storage pandamium:temp item.components."minecraft:potion_contents"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:written_book_contents".author set from storage pandamium:temp item.components."minecraft:written_book_contents".author
data modify storage pandamium:templates macro.id__count__components.components."minecraft:trim" set from storage pandamium:temp item.components."minecraft:trim"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:hide_additional_tooltip" set from storage pandamium:temp item.components."minecraft:hide_additional_tooltip"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:instrument" set from storage pandamium:temp item.components."minecraft:instrument"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:fireworks".flight_duration set from storage pandamium:temp item.components."minecraft:fireworks".flight_duration
data modify storage pandamium:templates macro.id__count__components.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:banner_patterns" set from storage pandamium:temp item.components."minecraft:banner_patterns"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:pot_decorations" set from storage pandamium:temp item.components."minecraft:pot_decorations"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container" set from storage pandamium:temp item.components."minecraft:container"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:container"[].item.components
data modify storage pandamium:templates macro.id__count__components.components."minecraft:enchantment_glint_override" set from storage pandamium:temp item.components."minecraft:enchantment_glint_override"
execute if data storage pandamium:temp item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:lodestone_tracker" set value {}

# resolve potentially-breaking data types
execute if data storage pandamium:templates macro.id__count__components.components{"minecraft:enchantment_glint_override":0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:enchantment_glint_override" set value 0
execute if data storage pandamium:templates macro.id__count__components.components{"minecraft:enchantment_glint_override":1b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:enchantment_glint_override" set value 1
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:fireworks".flight_duration store result storage pandamium:templates macro.id__count__components.components."minecraft:fireworks".flight_duration int 1 run data get storage pandamium:templates macro.id__count__components.components."minecraft:fireworks".flight_duration

execute if data storage pandamium:templates macro.id__count__components.components."minecraft:enchantments"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:enchantments".show_in_tooltip set value 0
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:stored_enchantments"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:stored_enchantments".show_in_tooltip set value 0
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:dyed_color"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:dyed_color".show_in_tooltip set value 0
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers".show_in_tooltip set value 0
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:attribute_modifiers".show_in_tooltip set value 0
execute if data storage pandamium:templates macro.id__count__components.components."minecraft:trim"{show_in_tooltip:0b} run data modify storage pandamium:templates macro.id__count__components.components."minecraft:trim".show_in_tooltip set value 0

execute store result score <filtered_item_components_length> variable run data get storage pandamium:templates macro.id__count__components.components
data modify storage pandamium:temp components_copy set from storage pandamium:templates macro.id__count__components.components

# escape once
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:templates","nbt":"macro.id__count__components.components"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.id__count__components.components set string block 3 0 0 front_text.messages[0] 1 -1

# set name
data modify storage pandamium:templates macro.id__count__components.id set from storage pandamium:temp item.id
execute store result storage pandamium:templates macro.id__count__components.count int 1 store result score <count> variable run data get storage pandamium:temp item.count

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"color":"red","text":"Error generating item name "},{"color":"yellow","text":"[Debug]","hoverEvent":{"action":"show_text","value":["",{"color":"gray","text":"Filtered Item Components (raw data):\\n"},{"storage":"pandamium:temp","nbt":"components_copy"}]}}]'
function pandamium:impl/database/mail/modify/attach_item/set_name with storage pandamium:templates macro.id__count__components
execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
