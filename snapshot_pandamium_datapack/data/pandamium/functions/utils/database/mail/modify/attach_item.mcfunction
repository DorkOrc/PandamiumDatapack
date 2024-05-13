# arguments: from

execute unless data storage pandamium.db.mail:io selected run return fail

$execute unless data $(from) run return fail
$data modify storage pandamium:temp item set from $(from)

execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
execute in pandamium:staff_world run data modify block 5 0 0 item set from storage pandamium:temp item

execute in pandamium:staff_world unless data block 5 0 0 item.id run return fail

# store item
data modify storage pandamium.db.mail:io selected.entry.data.items append value {}
execute store result storage pandamium.db.mail:io selected.entry.data.items[-1].stored_item_id int 1 run function pandamium:utils/database/stored_items/load_new
execute in pandamium:staff_world run function pandamium:utils/database/stored_items/modify/set_item/from_block {x:5,y:0,z:0,slot:"container.0"}
function pandamium:utils/database/stored_items/save

# get display name
execute in pandamium:staff_world run summon item 3.5 0.0 0.5 {Item:{id:"minecraft:stone"},Tags:["mail.added_item"]}
execute in pandamium:staff_world as @e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1] run function pandamium:impl/database/mail/modify/attach_item/as_item with storage pandamium.db.mail:io selected.entry.data.items[-1]

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:written_book_content".title.text run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:written_book_content\\".title.text","italic":true}'
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:item_name" run data modify block 3 0 0 front_text.messages[1] set value '["",{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:item_name\\"","interpret":true}]'
execute in pandamium:staff_world if data storage pandamium:temp item.components."minecraft:custom_name" run data modify block 3 0 0 front_text.messages[1] set value '[{"text":"","italic":true},{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:custom_name\\"","interpret":true}]'

execute in pandamium:staff_world run data modify storage pandamium:temp item_display_name set from block 3 0 0 front_text.messages[1]
execute in pandamium:staff_world if data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db.mail:io selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world unless data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db.mail:io selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[1]

# generate item hover event
data modify storage pandamium:templates macro.id__count__components set value {count:1,components:{}}
data modify storage pandamium:templates macro.id__count__components merge from storage pandamium:temp item
execute store result score <count> variable run data get storage pandamium:templates macro.id__count__components.count

# remove large unnecessary or private data
data remove storage pandamium:templates macro.id__count__components.components."minecraft:written_book_content".pages
data remove storage pandamium:templates macro.id__count__components.components."minecraft:writable_book_content".pages

data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:container"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:bundle_contents"[].components
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:writable_book_content"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:written_book_content"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:fireworks"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:block_entity_data"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:entity_data"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:custom_data"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:bees"
data remove storage pandamium:templates macro.id__count__components.components."minecraft:bundle_contents"[].components."minecraft:lodestone_tracker".tracker

data remove storage pandamium:templates macro.id__count__components.components."minecraft:container"[].item.components
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:potion_contents".potion set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:potion_contents".potion
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:base_color" set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:base_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:custom_name"
execute if data storage pandamium:temp item.components."minecraft:container"[0].item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[0].item.components."minecraft:lodestone_tracker" set value {}
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:potion_contents".potion set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:potion_contents".potion
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:base_color" set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:base_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:custom_name"
execute if data storage pandamium:temp item.components."minecraft:container"[1].item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[1].item.components."minecraft:lodestone_tracker" set value {}
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:potion_contents".potion set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:potion_contents".potion
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:base_color" set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:base_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:custom_name"
execute if data storage pandamium:temp item.components."minecraft:container"[2].item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[2].item.components."minecraft:lodestone_tracker" set value {}
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:potion_contents".potion set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:potion_contents".potion
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:base_color" set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:base_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:custom_name"
execute if data storage pandamium:temp item.components."minecraft:container"[3].item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[3].item.components."minecraft:lodestone_tracker" set value {}
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:written_book_contents".title set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:written_book_contents".title
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:profile".name set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:profile".name
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:potion_contents".potion set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:potion_contents".potion
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:base_color" set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:base_color"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:item_name" set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:item_name"
data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:custom_name" set from storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:custom_name"
execute if data storage pandamium:temp item.components."minecraft:container"[4].item.components."minecraft:lodestone_tracker" run data modify storage pandamium:templates macro.id__count__components.components."minecraft:container"[4].item.components."minecraft:lodestone_tracker" set value {}

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"color":"red","text":"Error generating item name "},{"color":"yellow","text":"[Debug]","hoverEvent":{"action":"show_text","value":["",{"color":"gray","text":"Item Data (raw data):\\n"},{"storage":"pandamium:temp","nbt":"item"},{"color":"gray","text":"\\nFiltered Item Data (raw data):\\n"},{"storage":"pandamium:templates","nbt":"macro.id__count__components"}]}}]'
function pandamium:impl/database/mail/modify/attach_item/set_name with storage pandamium:templates macro.id__count__components
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].fallback_name set from block 3 0 0 front_text.messages[1]
