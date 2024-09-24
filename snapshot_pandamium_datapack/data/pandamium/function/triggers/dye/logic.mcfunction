execute unless predicate pandamium:player/can_enable_custom_dye run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Only Patreon supporters can choose a custom dye for leather armour! You can check out our ","extra":[{"text":"discord server","bold":true}," for more information on how to support us, or try to get into the top ten of a monthly leaderboard!"],"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}]

# menu
execute if score @s dye matches 1.. run return run function pandamium:triggers/dye/print_menu/main

# toggle off/on
execute if score @s dye matches -3 unless score @s custom_dye.off matches 1 run scoreboard players set @s dye -1
execute if score @s dye matches -3 if score @s custom_dye.off matches 1 run scoreboard players set @s dye -2

execute if score @s dye matches -2..-1 unless score @s custom_dye.type matches 1.. run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" You have not chosen a custom dye!","color":"red"}]

execute if score @s dye matches -2..-1 run function pandamium:utils/database/players/load/self
execute if score @s dye matches -1 run data modify storage pandamium.db.players:io selected.entry.data.custom_dye.off set value true
execute if score @s dye matches -2 run data remove storage pandamium.db.players:io selected.entry.data.custom_dye.off
execute if score @s dye matches -2..-1 run function pandamium:utils/database/players/save

execute if score @s dye matches -1 run scoreboard players set @s custom_dye.off 1
execute if score @s dye matches -1 if items entity @s armor.* *[custom_data~{pandamium:{custom_dye:{}}}] run advancement grant @s only pandamium:detect/obtain_custom_dyed_item
execute if score @s dye matches -1 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Turned custom dye off!","color":"green"}]

execute if score @s dye matches -2 run scoreboard players reset @s custom_dye.off
execute if score @s dye matches -2 run playsound minecraft:item.armor.equip_leather player @s
execute if score @s dye matches -2 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Turned custom dye on!","color":"green"}]

# choose type
scoreboard players set <chosen_type> variable -100
scoreboard players operation <chosen_type> variable -= @s dye
execute if score <chosen_type> variable matches 1..1 run return run function pandamium:triggers/dye/change_type

# else
tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
