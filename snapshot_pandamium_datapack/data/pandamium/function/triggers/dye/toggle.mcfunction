execute if score @s dye matches -403 unless score @s custom_dye.off matches 1 run scoreboard players set @s dye -1
execute if score @s dye matches -403 if score @s custom_dye.off matches 1 run scoreboard players set @s dye -2

execute if score @s dye matches -402..-401 unless score @s custom_dye.type matches 1.. run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" You have not chosen a custom dye!","color":"red"}]

execute if score @s dye matches -401 if score @s custom_dye.off matches 1 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Your custom dye is already turned off!","color":"red"}]
execute if score @s dye matches -402 unless score @s custom_dye.off matches 1 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Your custom dye is already turned on!","color":"red"}]

execute if score @s dye matches -402..-401 run function pandamium:utils/database/players/load/self
execute if score @s dye matches -401 run data modify storage pandamium.db.players:io selected.entry.data.custom_dye.off set value true
execute if score @s dye matches -402 run data remove storage pandamium.db.players:io selected.entry.data.custom_dye.off
execute if score @s dye matches -402..-401 run function pandamium:utils/database/players/save

execute if score @s dye matches -401 run scoreboard players set @s custom_dye.off 1
execute if score @s dye matches -401 if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}] run advancement grant @s only pandamium:detect/obtain_transient_equippable_item
execute if score @s dye matches -401 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Turned custom dye off!","color":"green"}]

execute if score @s dye matches -402 run scoreboard players reset @s custom_dye.off
execute if score @s dye matches -402 if items entity @s armor.* #pandamium:leather_player_armor run playsound minecraft:item.armor.equip_leather player @s
execute if score @s dye matches -402 if items entity @s armor.* #pandamium:leather_player_armor run function pandamium:detect/trigger_custom_dye/main
execute if score @s dye matches -402 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Turned custom dye on!","color":"green"}]
