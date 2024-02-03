execute store result storage pandamium:templates macro.enchantment__level.level int 1 run data get storage pandamium:containers item.tag.Enchantments[0].lvl

data modify storage pandamium:templates macro.enchantment__level.enchantment set value "invalid"
data modify storage pandamium:temp compare set value ""
data modify storage pandamium:temp compare set string storage pandamium:containers item.tag.Enchantments[0].id 0 10
execute if data storage pandamium:temp {compare:"minecraft:"} run data modify storage pandamium:templates macro.enchantment__level.enchantment set string storage pandamium:containers item.tag.Enchantments[0].id 10
execute unless data storage pandamium:temp {compare:"minecraft:"} run data modify storage pandamium:templates macro.enchantment__level.enchantment set from storage pandamium:containers item.tag.Enchantments[0].id

function pandamium:impl/containers/run/enchantments/get_translation with storage pandamium:templates macro.enchantment__level
data modify storage pandamium:containers enchantments append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:containers item.tag.Enchantments[0]
execute if data storage pandamium:containers item.tag.Enchantments[0] run function pandamium:impl/containers/run/enchantments/iter
