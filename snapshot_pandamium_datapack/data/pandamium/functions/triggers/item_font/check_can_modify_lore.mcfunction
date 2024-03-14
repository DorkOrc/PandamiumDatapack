execute if data storage pandamium:temp item.components."minecraft:custom_data".pandamium.font.cannot_modify{lore:1b} run return 0

execute if data storage pandamium:temp item.components."minecraft:custom_data".pandamium.stored_mob run return 0

scoreboard players set <is_guidebook> variable 1
execute \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components."minecraft:written_book_contents"{title: {text: "Pandamium Guidebook"}, author: "jamieamie", generation: 3} \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components."minecraft:written_book_contents"{title: {text: "Pandamium Guidebook"}, author: "JamieTheAngel", generation: 3} \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components{"minecraft:written_book_contents": {title: {text: ""}, author: ""}, "minecraft:hide_additional_tooltip": {}} \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components."minecraft:written_book_contents"{title: {text: "Pandamium Guidebook"}, author: "DorkOrc, JamieTheAngel and KittyAcel"} \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components."minecraft:written_book_contents"{title: {text: "Pandamium Guidebook"}, author: "DorkOrc, Jamie_Angel and KittyAcel"} \
    unless data storage pandamium:temp item{id: "minecraft:written_book"}.components."minecraft:custom_data".pandamium.guidebook \
    run scoreboard players set <is_guidebook> variable 0
execute if score <is_guidebook> variable matches 1 run return 0

return 1
