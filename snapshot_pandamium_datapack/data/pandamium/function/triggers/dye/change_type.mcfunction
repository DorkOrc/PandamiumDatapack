# verify type changed
execute if score @s custom_dye.type = <chosen_type> variable unless score @s custom_dye.type matches 4..5 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Nothing changed! Your dye is already set to that type!","color":"red"}]

# save option
function pandamium:utils/database/players/load/self

execute store result storage pandamium.db.players:io selected.entry.data.custom_dye.type byte 1 run scoreboard players get <chosen_type> variable

execute if score <chosen_type> variable matches 4..5 store success score <colors_changed> variable run data modify storage pandamium.db.players:io selected.entry.data.custom_dye.colors set from storage pandamium:local functions."pandamium:triggers/dye/*".colors
execute if score <chosen_type> variable matches 4..5 if score <colors_changed> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Nothing changed! Your dye is already set to that colour!","color":"red"}]
execute unless score <chosen_type> variable matches 4..5 run data remove storage pandamium.db.players:io selected.entry.data.custom_dye.colors

data modify storage pandamium:local functions."pandamium:triggers/dye/*".username set from storage pandamium.db.players:io selected.entry.username
execute if score @s custom_dye.type matches 4 unless score <chosen_type> variable matches 4 run function pandamium:impl/database/cache/modify/remove_custom_dye.fixed_entry/main with storage pandamium:local functions."pandamium:triggers/dye/*"
execute if score @s custom_dye.type matches 5 unless score <chosen_type> variable matches 5 run function pandamium:impl/database/cache/modify/remove_custom_dye.gradient_entry/main with storage pandamium:local functions."pandamium:triggers/dye/*"

execute if score <chosen_type> variable matches 4 run function pandamium:impl/database/cache/modify/add_custom_dye.fixed_entry/main with storage pandamium:local functions."pandamium:triggers/dye/*"
execute if score <chosen_type> variable matches 5 run function pandamium:utils/database/players/modify/cache_animated_gradient

function pandamium:utils/database/players/save

scoreboard players operation @s custom_dye.type = <chosen_type> variable

# update armour
execute if items entity @s armor.feet #pandamium:leather_player_armor[custom_data~{pandamium:{transient_equippable:{}}}] run item modify entity @s armor.feet {function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}
execute if items entity @s armor.legs #pandamium:leather_player_armor[custom_data~{pandamium:{transient_equippable:{}}}] run item modify entity @s armor.legs {function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}
execute if items entity @s armor.chest #pandamium:leather_player_armor[custom_data~{pandamium:{transient_equippable:{}}}] run item modify entity @s armor.chest {function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}
execute if items entity @s armor.head #pandamium:leather_player_armor[custom_data~{pandamium:{transient_equippable:{}}}] run item modify entity @s armor.head {function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}
execute if items entity @s armor.* #pandamium:leather_player_armor run playsound minecraft:item.armor.equip_leather player @s

# output message
execute if score <chosen_type> variable matches 1 run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set custom dye type to ","extra":[{"text":"Rainbow","color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 2 run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set custom dye type to ","extra":[{"text":"Health","color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 3 run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set custom dye type to ","extra":[{"text":"Biome","color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 4 run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set custom dye type to ","extra":[{"text":"Solid ","extra":[{"storage":"pandamium:temp","nbt":"colour.name","interpret":true,"color":"aqua"}],"color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 5 run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set custom dye type to ","extra":[{"text":"Custom Gradient","color":"aqua"},"!"],"color":"green"}]

execute if score @s custom_dye.off matches 1 run return run tellraw @s {"color":"green","text":" ","extra":[{"text":"Turn your custom dye on","underlined":true}," and wear leather armour to see it!"]}
execute unless items entity @s armor.* #pandamium:leather_player_armor run return run tellraw @s {"color":"green","text":" Put some leather armour on to see it!"}
