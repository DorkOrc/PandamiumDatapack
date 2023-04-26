scoreboard players set <can_inspect> variable 0
data remove storage pandamium:containers items

scoreboard players set <inspect_book_ui> variable 0
execute if data storage pandamium:containers inspect.item{id:"minecraft:written_book"}.tag.pages[0] store success score <inspect_book_ui> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item
execute if data storage pandamium:containers inspect.item{id:"minecraft:writable_book"}.tag.pages[0] store success score <inspect_book_ui> variable run data modify storage pandamium:containers items append from storage pandamium:containers inspect.item

scoreboard players set <inspect_generic> variable 0
execute if data storage pandamium:containers inspect.item{id:"minecraft:bundle"}.tag.Items[0] store success score <inspect_generic> variable run data modify storage pandamium:containers items set from storage pandamium:containers inspect.item.tag.Items
execute unless data storage pandamium:containers items if data storage pandamium:containers inspect.item.tag.BlockEntityTag.Items[0] store success score <inspect_generic> variable run data modify storage pandamium:containers items set from storage pandamium:containers inspect.item.tag.BlockEntityTag.Items

execute store success score <can_inspect> variable if data storage pandamium:containers items

data remove storage pandamium:containers source
execute if score <can_inspect> variable matches 1 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Inspected Item ","bold":true},"========"]
execute if score <can_inspect> variable matches 1 run tellraw @s {"nbt":"inspect.subheader","storage":"pandamium:containers","interpret":true}
execute if score <can_inspect> variable matches 1 if score <inspect_generic> variable matches 1 run function pandamium:impl/containers/generic
execute if score <can_inspect> variable matches 1 if score <inspect_book_ui> variable matches 1 run function pandamium:impl/containers/book_ui
execute if score <can_inspect> variable matches 1 run tellraw @s {"text":"=====================================","color":"yellow"}
