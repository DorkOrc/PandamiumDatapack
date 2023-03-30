execute store result score <level> variable run data get storage pandamium:containers item.tag.Enchantments[0].lvl
data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"item.tag.Enchantments[0].id","storage":"pandamium:containers","color":"green"}," ",{"score":{"name":"<level>","objective":"variable"},"color":"gold"}]'
data modify storage pandamium:containers enchantments append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:containers item.tag.Enchantments[0]
execute if data storage pandamium:containers item.tag.Enchantments[0] run function pandamium:containers/run/enchantments/iter
