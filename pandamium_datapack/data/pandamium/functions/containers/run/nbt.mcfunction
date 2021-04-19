data remove storage pandamium:containers temp
data modify storage pandamium:containers temp.Tag set from storage pandamium:containers item.tag

scoreboard players set <hide_items> variable 1
execute unless data storage pandamium:containers {container:'inventory'} unless data storage pandamium:containers {container:'enderchest'} run scoreboard players set <hide_items> variable 0
execute if score <hide_items> variable matches 1 run data remove storage pandamium:containers temp.Tag.Items
execute if score <hide_items> variable matches 1 run data remove storage pandamium:containers temp.Tag.BlockEntityTag.Items
execute if score <hide_items> variable matches 1 store result score <total_block_entity_tags> variable run data get storage pandamium:containers temp.Tag.BlockEntityTag
execute if score <hide_items> variable matches 1 if score <total_block_entity_tags> variable matches 0 run data remove storage pandamium:containers temp.Tag.BlockEntityTag

execute store result score <total_tags> variable run data get storage pandamium:containers temp.Tag
#
execute if score <total_tags> variable matches 1.. run tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.id","storage":"pandamium:containers","color":"yellow"},{"text":"(s)","color":"gray"}," ",{"text":"[NBT]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"nbt":"temp.Tag","storage":"pandamium:containers"}]}}," ",[{"text":"","color":"white","italic":true},{"nbt":"item.tag.display.Name","storage":"pandamium:containers","interpret":true}]]
execute unless score <total_tags> variable matches 1.. run tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.id","storage":"pandamium:containers","color":"yellow"},{"text":"(s)","color":"gray"}]

execute if data storage pandamium:containers item.tag.SkullOwner.Name run tellraw @s [{"text":"└SkullOwner: ","color":"aqua"},{"nbt":"item.tag.SkullOwner.Name","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.tag.LodestonePos run tellraw @s [{"text":"└LodestonePos: ","color":"aqua"},{"nbt":"item.tag.LodestonePos.X","storage":"pandamium:containers","color":"gold"}," ",{"nbt":"item.tag.LodestonePos.Y","storage":"pandamium:containers","color":"gold"}," ",{"nbt":"item.tag.LodestonePos.Z","storage":"pandamium:containers","color":"gold"}," ",{"nbt":"item.tag.LodestoneDimension","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.tag.Potion run tellraw @s [{"text":"└Potion: ","color":"aqua"},{"nbt":"item.tag.Potion","storage":"pandamium:containers","color":"green"}]
execute if data storage pandamium:containers item.tag.title if data storage pandamium:containers item.tag.author run tellraw @s [{"text":"└Book: ","color":"aqua"},{"nbt":"item.tag.title","storage":"pandamium:containers","color":"green"}," by ",{"nbt":"item.tag.author","storage":"pandamium:containers","color":"green"}]

execute if data storage pandamium:containers item.tag.StoredEnchantments run data modify storage pandamium:containers item.tag.Enchantments set from storage pandamium:containers item.tag.StoredEnchantments
execute if data storage pandamium:containers item.tag.Enchantments run function pandamium:containers/run/enchantments

execute if data storage pandamium:containers item.tag.BlockEntityTag.Items run data modify storage pandamium:containers item.tag.Items set from storage pandamium:containers item.tag.BlockEntityTag.Items
execute if data storage pandamium:containers item.tag.Items[0] run function pandamium:containers/run/items
