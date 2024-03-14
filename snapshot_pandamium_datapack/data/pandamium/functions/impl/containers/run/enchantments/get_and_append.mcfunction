# arguments: name

$execute store result storage pandamium:templates macro.enchantment__level.level int 1 run data get storage pandamium:containers item.components."minecraft:enchantments".levels."minecraft:$(name)"
$data modify storage pandamium:templates macro.enchantment__level.enchantment set value "$(name)"

function pandamium:impl/containers/run/enchantments/get_translation with storage pandamium:templates macro.enchantment__level

data modify storage pandamium:containers enchantments append from block 3 0 0 front_text.messages[0]
