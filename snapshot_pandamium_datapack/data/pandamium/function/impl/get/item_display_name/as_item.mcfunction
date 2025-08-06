item replace entity @s contents from block 2 1 0 container.0
data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item set from entity @s Item

# get item name
execute store success score <has_custom_name> variable if items entity @s contents *[custom_name]
execute if score <has_custom_name> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name set from storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item.components.minecraft:custom_name
execute if score <has_custom_name> variable matches 0 run item modify entity @s contents {function:"minecraft:set_name",entity:"this",name:{selector:"@s"}}
execute if score <has_custom_name> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name set from entity @s Item.components.minecraft:custom_name.hover_event.name

execute if data storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name{} run data modify storage pandamium:temp item_display_name set from storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name
execute unless data storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name{} run data modify storage pandamium:temp item_display_name.text set from storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name

execute if score <has_custom_name> variable matches 1 unless data storage pandamium:temp item_display_name{italic:false} run data modify storage pandamium:temp item_display_name.italic set value true

# get rarity level
scoreboard players set <rarity> variable 0
execute if items entity @s contents *[rarity=uncommon] run scoreboard players set <rarity> variable 1
execute if items entity @s contents *[rarity=rare] run scoreboard players set <rarity> variable 2
execute if items entity @s contents *[rarity=epic] run scoreboard players set <rarity> variable 3
execute if score <rarity> variable matches 0..1 if items entity @s contents *[enchantments~[{}]] run scoreboard players set <rarity> variable 2

execute if score <rarity> variable matches 0 run data modify storage pandamium:temp item_display_name.color set value "white"
execute if score <rarity> variable matches 1 run data modify storage pandamium:temp item_display_name.color set value "yellow"
execute if score <rarity> variable matches 2 run data modify storage pandamium:temp item_display_name.color set value "aqua"
execute if score <rarity> variable matches 3 run data modify storage pandamium:temp item_display_name.color set value "light_purple"

# set hover_event
data modify storage pandamium:temp item_display_name.hover_event set value {action:"show_item"}
data modify storage pandamium:temp item_display_name.hover_event merge from storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item

# set count
scoreboard players set <count> variable 1
execute if data storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item.count store result score <count> variable run data get storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item.count
execute unless score <count> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name set value {text:"",extra:[]}
execute unless score <count> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name.extra append from storage pandamium:temp item_display_name
execute if score <count> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name set value {translate:"item.container.item_count",with:["???","0"]}
execute if score <count> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name.with[0] set from storage pandamium:temp item_display_name
execute if score <count> variable matches 2.. run data modify storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name.with[1] set string storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item.count
data modify storage pandamium:temp item_display_name set from storage pandamium:local functions."pandamium:impl/get/item_display_name/as_item".item_display_name

# kill entity
kill @s
