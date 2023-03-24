execute store result score <level> variable run data get storage pandamium:containers item.tag.Enchantments[0].lvl
data modify block 4 0 0 Book.tag.pages[0] set value '[{"nbt":"item.tag.Enchantments[0].id","storage":"pandamium:containers","color":"green"}," ",{"score":{"name":"<level>","objective":"variable"},"color":"gold"}]'
data modify block 4 0 0 Book.tag.resolved set value 0b
data modify storage pandamium:containers enchantments append from block 4 0 0 Book.tag.pages[0]

data remove storage pandamium:containers item.tag.Enchantments[0]
execute if data storage pandamium:containers item.tag.Enchantments[0] run function pandamium:containers/run/enchantments/iter
