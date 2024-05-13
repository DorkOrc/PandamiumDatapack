# arguments: id, count, components

execute in pandamium:staff_world run item replace block 5 1 0 contents with stone

$execute unless score <count> variable matches 2.. in pandamium:staff_world run item modify block 5 1 0 contents {function: "minecraft:set_name",name: {storage: "pandamium.db.mail:io", nbt: "selected.entry.data.items[-1].name", interpret: true, hoverEvent: {action: "show_item", contents: {id: "$(id)", components: $(components)}}}}
$execute if score <count> variable matches 2.. in pandamium:staff_world run item modify block 5 1 0 contents {function: "minecraft:set_name",name: [{"text": "$(count) "}, {storage: "pandamium.db.mail:io", nbt: "selected.entry.data.items[-1].name", interpret: true, hoverEvent: {action: "show_item", contents: {id: "$(id)", components: $(components)}}}]}

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set from block 5 1 0 item.components."minecraft:custom_name"

execute unless score <count> variable matches 2.. in pandamium:staff_world run item modify block 5 1 0 contents {function: "minecraft:set_name",name: {storage: "pandamium.db.mail:io", nbt: "selected.entry.data.items[-1].name", interpret: true, hoverEvent: {action: "show_text", contents: {"text":"Invalid Item Components","color":"gray"}}}}
$execute if score <count> variable matches 2.. in pandamium:staff_world run item modify block 5 1 0 contents {function: "minecraft:set_name",name: [{"text": "$(count) "}, {storage: "pandamium.db.mail:io", nbt: "selected.entry.data.items[-1].name", interpret: true, hoverEvent: {action: "show_text", contents: {"text":"Invalid Item Components","color":"gray"}}}]}

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set from block 5 1 0 item.components."minecraft:custom_name"
