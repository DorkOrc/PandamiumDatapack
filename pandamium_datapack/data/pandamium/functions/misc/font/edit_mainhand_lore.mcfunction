execute store success score <valid_option> variable if score <font> variable matches 101..104

data modify storage pandamium:temp Text set from storage pandamium:temp NBT.SelectedItem.tag.display.Name
setblock 0 0 0 air
setblock 0 0 0 oak_sign{Text1:'[{"text":"","color":"white"},{"nbt":"Text","storage":"pandamium:temp","interpret":true}]'}
data modify storage pandamium:temp Text set from block 0 0 0 Text1

data modify storage pandamium:temp Lore set value []
data modify storage pandamium:temp Lore set from storage pandamium:temp NBT.SelectedItem.tag.display.Lore
execute if score <font> variable matches 101..104 unless data storage pandamium:temp Lore[0] run data modify storage pandamium:temp Lore append value '{"text":""}'
execute if score <font> variable matches 102..104 unless data storage pandamium:temp Lore[1] run data modify storage pandamium:temp Lore append value '{"text":""}'
execute if score <font> variable matches 103..104 unless data storage pandamium:temp Lore[2] run data modify storage pandamium:temp Lore append value '{"text":""}'
execute if score <font> variable matches 104..104 unless data storage pandamium:temp Lore[3] run data modify storage pandamium:temp Lore append value '{"text":""}'

execute if score <font> variable matches 101 store success score <text_changed> variable run data modify storage pandamium:temp Lore[0] set from storage pandamium:temp Text
execute if score <font> variable matches 102 store success score <text_changed> variable run data modify storage pandamium:temp Lore[1] set from storage pandamium:temp Text
execute if score <font> variable matches 103 store success score <text_changed> variable run data modify storage pandamium:temp Lore[2] set from storage pandamium:temp Text
execute if score <font> variable matches 104 store success score <text_changed> variable run data modify storage pandamium:temp Lore[3] set from storage pandamium:temp Text

# Transfer Lore to mainhand Lore
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand pandamium:font/set_lore_from_storage

