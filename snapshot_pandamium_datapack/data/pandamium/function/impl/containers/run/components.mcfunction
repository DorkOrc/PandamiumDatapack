data remove storage pandamium:containers displayed_components
data modify storage pandamium:containers displayed_components set from storage pandamium:containers item.components

data remove storage pandamium:containers displayed_components."minecraft:enchantments"
data remove storage pandamium:containers displayed_components."minecraft:stored_enchantments"
data remove storage pandamium:containers displayed_components."minecraft:profile"
data remove storage pandamium:containers displayed_components."minecraft:custom_name"
data remove storage pandamium:containers displayed_components."minecraft:lore"

data remove storage pandamium:containers displayed_components."minecraft:potion_contents".potion
execute store result score <component_size> variable run data get storage pandamium:containers displayed_components."minecraft:potion_contents"
execute if score <component_size> variable matches 0 run data remove storage pandamium:containers displayed_components."minecraft:potion_contents"

execute store success score <able_to_inspect> variable if data storage pandamium:containers source
execute if score <able_to_inspect> variable matches 1 run data remove storage pandamium:containers displayed_components."minecraft:writable_book_content"
execute if score <able_to_inspect> variable matches 1 run data remove storage pandamium:containers displayed_components."minecraft:written_book_content"
execute if score <able_to_inspect> variable matches 1 run data remove storage pandamium:containers displayed_components."minecraft:container"
execute if score <able_to_inspect> variable matches 1 run data remove storage pandamium:containers displayed_components."minecraft:bundle_contents"

execute if data storage pandamium:containers item.components."minecraft:written_book_content".title{raw:""} run data remove storage pandamium:containers displayed_components."minecraft:item_name"
execute if data storage pandamium:containers item{id:"minecraft:lectern"}.components."minecraft:block_entity_data".Book run data modify storage pandamium:containers item.components."minecraft:container" append from storage pandamium:containers item.components."minecraft:block_entity_data".Book
data remove storage pandamium:containers displayed_components."minecraft:block_entity_data".Book
execute if data storage pandamium:containers item{id:"minecraft:jukebox"}.components."minecraft:block_entity_data".RecordItem run data modify storage pandamium:containers item.components."minecraft:container" append from storage pandamium:containers item.components."minecraft:block_entity_data".RecordItem
data remove storage pandamium:containers displayed_components."minecraft:block_entity_data".RecordItem
data remove storage pandamium:containers displayed_components."minecraft:block_entity_data".id
execute store result score <component_size> variable run data get storage pandamium:containers displayed_components."minecraft:block_entity_data"
execute if score <component_size> variable matches 0 run data remove storage pandamium:containers displayed_components."minecraft:block_entity_data"

#> Print Data
execute store result score <displayed_components_size> variable run data get storage pandamium:containers displayed_components
execute if score <displayed_components_size> variable matches 1.. run tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.display_id","storage":"pandamium:containers","color":"yellow"},{"nbt":"plural","storage":"pandamium:containers","color":"gray"}," ",{"text":"[Extra]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Extra Components Data (raw data):\n",{"nbt":"displayed_components","storage":"pandamium:containers","color":"gray"}]}}," ",[{"text":"","color":"white","italic":true},{"nbt":"item.components.\"minecraft:custom_name\"","storage":"pandamium:containers","interpret":true}]]
execute unless score <displayed_components_size> variable matches 1.. run tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.display_id","storage":"pandamium:containers","color":"yellow"},{"nbt":"plural","storage":"pandamium:containers","color":"gray"}," ",[{"text":"","color":"white","italic":true},{"nbt":"item.components.\"minecraft:custom_name\"","storage":"pandamium:containers","interpret":true}]]

execute if data storage pandamium:containers item.components."minecraft:profile".name run tellraw @s [{"text":"└profile: ","color":"aqua"},{"translate":"block.minecraft.player_head.named","with":[{"nbt":"item.components.\"minecraft:profile\".name","storage":"pandamium:containers"}],"color":"yellow"}]
execute if data storage pandamium:containers item.components."minecraft:lodestone_tracker".target run tellraw @s [{"text":"└lodestone_tracker: ","color":"aqua"},{"nbt":"item.components.\"minecraft:lodestone_tracker\".target.pos[]","storage":"pandamium:containers","separator":" ","color":"gold"}," ",{"nbt":"item.components.\"minecraft:lodestone_tracker\".target.dimension","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.components."minecraft:potion_contents".potion run tellraw @s [{"text":"└potion_contents: ","color":"aqua"},{"nbt":"item.components.\"minecraft:potion_contents\".potion","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.components."minecraft:written_book_content".title{raw:""} run tellraw @s [{"text":"└written_book_content: ","color":"aqua"},{"nbt":"item.components.\"minecraft:item_name\"","storage":"pandamium:containers","interpret":true,"color":"green"}," by ",{"nbt":"item.components.\"minecraft:written_book_content\".author","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.components."minecraft:written_book_content" unless data storage pandamium:containers item.components."minecraft:written_book_content".title{raw:""} run tellraw @s [{"text":"└written_book_content: ","color":"aqua"},{"nbt":"item.components.\"minecraft:written_book_content\".title.raw","storage":"pandamium:containers","color":"green"}," by ",{"nbt":"item.components.\"minecraft:written_book_content\".author","storage":"pandamium:containers","color":"green"}]

execute if data storage pandamium:containers item{id:"minecraft:enchanted_book"} run data modify storage pandamium:containers item.components."minecraft:enchantments" set from storage pandamium:containers item.components."minecraft:stored_enchantments"
execute if data storage pandamium:containers item.components."minecraft:enchantments" run function pandamium:impl/containers/run/enchantments/main

execute if data storage pandamium:containers item.components."minecraft:lore"[0] run tellraw @s [{"text":"└lore: ","color":"aqua"},{"text":"[Lore]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_purple","italic":true},{"nbt":"item.components.\"minecraft:lore\"[]","storage":"pandamium:containers","interpret":true,"separator":"\n"}]}}]

execute if data storage pandamium:containers item.components."minecraft:container"[0] run function pandamium:impl/containers/run/inspect/prompt_container_items

execute if data storage pandamium:containers item.components."minecraft:bundle_contents"[0] run function pandamium:impl/containers/run/inspect/prompt_bundle_items

execute if data storage pandamium:containers item.components."minecraft:writable_book_content".pages[0] run function pandamium:impl/containers/run/inspect/prompt_pages
execute if data storage pandamium:containers item.components."minecraft:written_book_content".pages[0] run function pandamium:impl/containers/run/inspect/prompt_pages
