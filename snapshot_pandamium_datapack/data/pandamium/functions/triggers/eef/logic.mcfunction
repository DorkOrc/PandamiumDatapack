# get item
execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
execute in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute in pandamium:staff_world store success score <mainhand> variable if data block 5 0 0 item.tag.pandamium.stored_mob
execute in pandamium:staff_world if score <mainhand> variable matches 0 run item replace block 5 0 0 container.0 from entity @s weapon.offhand

execute in pandamium:staff_world unless data block 5 0 0 item.tag.pandamium.stored_mob run return run tellraw @s [{"text":"[eef]","color":"dark_red"},{"text":" You must be holding a Stored Mob Item to eef!","color":"red"}]

execute in pandamium:staff_world run data modify storage pandamium:temp entity set from block 5 0 0 item.tag.pandamium.stored_mob
execute if score <mainhand> variable matches 1 run item modify entity @s weapon.mainhand pandamium:decrement_count
execute if score <mainhand> variable matches 0 run item modify entity @s weapon.offhand pandamium:decrement_count

# fix data
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:0} run data modify storage pandamium:temp entity.variant set value "minecraft:white"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:1} run data modify storage pandamium:temp entity.variant set value "minecraft:black"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:2} run data modify storage pandamium:temp entity.variant set value "minecraft:red"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:3} run data modify storage pandamium:temp entity.variant set value "minecraft:siamese"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:4} run data modify storage pandamium:temp entity.variant set value "minecraft:british_shorthair"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:5} run data modify storage pandamium:temp entity.variant set value "minecraft:calico"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:6} run data modify storage pandamium:temp entity.variant set value "minecraft:persian"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:7} run data modify storage pandamium:temp entity.variant set value "minecraft:ragdoll"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:8} run data modify storage pandamium:temp entity.variant set value "minecraft:tabby"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:9} run data modify storage pandamium:temp entity.variant set value "minecraft:all_black"
execute if data storage pandamium:temp entity{id:"minecraft:cat",CatType:10} run data modify storage pandamium:temp entity.variant set value "minecraft:jellie"
data remove storage pandamium:temp entity.CatType

execute if data storage pandamium:temp entity.ArmorItem run data modify storage pandamium:temp entity.body_armor_item set from storage pandamium:temp entity.ArmorItem
data remove storage pandamium:temp entity.ArmorItem

data remove storage pandamium:temp entity.Pos
data remove storage pandamium:temp entity.Motion
data remove storage pandamium:temp entity.RaidId

function pandamium:triggers/eef/with_id with storage pandamium:temp entity
tellraw @s [{"text":"[eef]","color":"dark_green"},{"text":" Successfully eefed!","color":"green"}]

# cba to map to effects or attributes or items (e.g. scute -> turtle scute) 
