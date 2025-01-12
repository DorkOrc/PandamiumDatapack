# [from]
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/load_new
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "player_info_v2"}
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "teleport"
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.position set from storage pandamium:temp entries[0].from
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.username set from storage pandamium.db.players:io selected.entry.username
execute if score @s staff_perms matches 2.. run data modify storage pandamium:temp from_click_event set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/save

execute store result score <dimension> variable run data get storage pandamium:temp entries[0].from[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp from_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].from[3]

# [to]
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/load_new
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/modify/set_owner/from_self
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/modify/set_trigger {trigger: "player_info_v2"}
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.type set value "teleport"
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.position set from storage pandamium:temp entries[0].to
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db.click_events:io selected.entry.data.username set from storage pandamium.db.players:io selected.entry.username
execute if score @s staff_perms matches 2.. run data modify storage pandamium:temp to_click_event set from storage pandamium.db.click_events:io selected.entry.click_event_root
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_events/save

execute store result score <dimension> variable run data get storage pandamium:temp entries[0].from[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp to_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].to[3]

# get info
execute store result score <hour_id> variable run data get storage pandamium:temp entries[0].hour_id
function pandamium:utils/get/date/from_hour_id_score

tellraw @s[scores={staff_perms=..1}] [{text:"• ",color:"gray"},{storage:"pandamium:temp",nbt:"entries[0].source",color:"white",font:"minecraft:uniform",hover_event:{action:"show_text",text:[{text:"unformatted entry data:\n",color:"gray"},{storage:"pandamium:temp",nbt:"entries[0]",color:"white"},{text:"\nunformatted date:\n",color:"gray"},{storage:"pandamium:temp",nbt:"date",color:"white"}]}},{text:" "},{text:"[FROM]",color:"yellow",hover_event:{action:"show_text",text:[{storage:"pandamium:temp",nbt:"entries[0].from[]",separator:" ",color:"yellow"},{text:" in "},{storage:"pandamium:temp",nbt:"from_dimension"}]}},{text:" "},{text:"[TO]",color:"green",hover_event:{action:"show_text",text:[{storage:"pandamium:temp",nbt:"entries[0].to[]",separator:" ",color:"green"},{text:" in "},{storage:"pandamium:temp",nbt:"to_dimension"}]}}]
tellraw @s[scores={staff_perms=2..}] [{text:"• ",color:"gray"},{storage:"pandamium:temp",nbt:"entries[0].source",color:"white",font:"minecraft:uniform",hover_event:{action:"show_text",text:[{text:"unformatted entry data:\n",color:"gray"},{storage:"pandamium:temp",nbt:"entries[0]",color:"white"},{text:"\nunformatted date:\n",color:"gray"},{storage:"pandamium:temp",nbt:"date",color:"white"}]}},{text:" "},{storage:"pandamium:temp",nbt:"from_click_event",interpret:true,extra:[{text:"[FROM]",color:"yellow",hover_event:{action:"show_text",text:[{storage:"pandamium:temp",nbt:"entries[0].from[]",separator:" ",color:"yellow"},{text:" in "},{storage:"pandamium:temp",nbt:"from_dimension"},{text:"\n\nClick to teleport there"}]}}]},{text:" "},{storage:"pandamium:temp",nbt:"to_click_event",interpret:true,extra:[{text:"[TO]",color:"green",hover_event:{action:"show_text",text:[{storage:"pandamium:temp",nbt:"entries[0].to[]",separator:" ",color:"green"},{text:" in "},{storage:"pandamium:temp",nbt:"to_dimension"},{text:"\n\nClick to teleport there"}]}}]}]

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:triggers/player_info_v2/print_teleport_history_menu/loop
