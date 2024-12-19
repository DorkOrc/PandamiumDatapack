# removal option
execute if score @s particles matches -1999 unless score @s particles_data.damage.type matches 1.. run return run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a death/hurt effect enabled!"]

execute if score @s particles matches -1999 run scoreboard players reset @s particles_data.damage.type
execute if score @s particles matches -1999 run function pandamium:utils/database/players/load/self
execute if score @s particles matches -1999 run data remove storage pandamium.db.players:io selected.entry.data.particles.damage
execute if score @s particles matches -1999 unless data storage pandamium.db.players:io selected.entry.data.particles.trail run data remove storage pandamium.db.players:io selected.entry.data.particles
execute if score @s particles matches -1999 run function pandamium:utils/database/players/save
execute if score @s particles matches -1999 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your death/hurt effect!"]

# restrictions
execute unless score @s particles matches -1019..-1001 run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# save
scoreboard players operation @s particles_data.damage.type = @s particles
scoreboard players add @s particles_data.damage.type 1000
function pandamium:utils/database/players/load/self
data remove storage pandamium.db.players:io selected.entry.data.particles.damage
execute store result storage pandamium.db.players:io selected.entry.data.particles.damage.type short 1 store result score <damage_effect_type> variable run scoreboard players operation @s particles_data.damage.type *= #-1 constant
function pandamium:utils/database/players/save

# feedback
function pandamium:triggers/particles/print_menu/get_damage_effect_name/main
tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"death/hurt effect","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"damage_effect_name","storage":"pandamium:temp","interpret":true}],"!"]
