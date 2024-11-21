execute if score @s custom_dye.type = <chosen_type> variable if score @s custom_dye.off matches 1 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Nothing changed! Your is custom dye is currently off.","color":"red"}]
execute if score @s custom_dye.type = <chosen_type> variable unless items entity @s armor.* #pandamium:leather_player_armor run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Nothing changed! You are not wearing any leather armour.","color":"red"}]
execute if score @s custom_dye.type = <chosen_type> variable run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# save option to database
function pandamium:utils/database/players/load/self
execute store result storage pandamium.db.players:io selected.entry.data.custom_dye.type byte 1 run scoreboard players get <chosen_type> variable
function pandamium:utils/database/players/save

# update custom_dye.type score
scoreboard players operation @s custom_dye.type = <chosen_type> variable

# output message
execute if score <chosen_type> variable matches 1 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set Custom Dye to ","extra":[{"text":"Rainbow","color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 2 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set Custom Dye to ","extra":[{"text":"Health","color":"aqua"},"!"],"color":"green"}]
execute if score <chosen_type> variable matches 3 run return run tellraw @s [{"text":"[Dye]","color":"dark_green"},{"text":" Set Custom Dye to ","extra":[{"text":"Biome","color":"aqua"},"!"],"color":"green"}]
