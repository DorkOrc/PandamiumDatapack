scoreboard players set <can_inspect> variable 0
data remove storage pandamium:containers items

scoreboard players set <inspect_book_ui> variable 0
execute if data storage pandamium:containers inspect.item{id:"minecraft:written_book"}.components."minecraft:written_book_content".pages[0] store success score <inspect_book_ui> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item
execute if data storage pandamium:containers inspect.item{id:"minecraft:writable_book"}.components."minecraft:writable_book_content".pages[0] store success score <inspect_book_ui> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item

scoreboard players set <inspect_bundle> variable 0
execute if data storage pandamium:containers inspect.item.components."minecraft:bundle_contents"[0] store success score <inspect_bundle> variable run data modify storage pandamium:containers items set from storage pandamium:containers inspect.item.components."minecraft:bundle_contents"

scoreboard players set <inspect_generic> variable 0
execute unless data storage pandamium:containers items if data storage pandamium:containers inspect.item.components."minecraft:container"[0] store success score <inspect_generic> variable run data modify storage pandamium:containers items set from storage pandamium:containers inspect.item.components."minecraft:container"

scoreboard players set <inspect_generic_single> variable 0
execute if data storage pandamium:containers inspect.item{id:"minecraft:lectern"}.components."minecraft:block_entity_data".Book store success score <inspect_generic_single> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item.components."minecraft:block_entity_data".Book
execute if data storage pandamium:containers inspect.item{id:"minecraft:jukebox"}.components."minecraft:block_entity_data".RecordItem store success score <inspect_generic_single> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item.components."minecraft:block_entity_data".RecordItem
execute if score <inspect_generic> variable matches 1 if data storage pandamium:containers inspect.item{id:"minecraft:decorated_pot"} run scoreboard players set <inspect_generic_single> variable 1
execute if score <inspect_generic_single> variable matches 1 run scoreboard players set <inspect_generic> variable 0

execute store success score <can_inspect> variable if data storage pandamium:containers items

data remove storage pandamium:containers source
execute if score <can_inspect> variable matches 1 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Inspected Item ","bold":true},"========"]
execute if score <can_inspect> variable matches 1 run tellraw @s {"nbt":"inspect.subheader","storage":"pandamium:containers","interpret":true}
execute if score <can_inspect> variable matches 1 if score <inspect_generic> variable matches 1 run function pandamium:impl/containers/generic
execute if score <can_inspect> variable matches 1 if score <inspect_generic_single> variable matches 1 run function pandamium:impl/containers/generic_single
execute if score <can_inspect> variable matches 1 if score <inspect_bundle> variable matches 1 run function pandamium:impl/containers/bundle
execute if score <can_inspect> variable matches 1 if score <inspect_book_ui> variable matches 1 run function pandamium:impl/containers/book_ui
execute if score <can_inspect> variable matches 1 run tellraw @s {"text":"=====================================","color":"yellow"}
