# arguments: particle_trail_id

# get username
function pandamium:utils/get/username
data modify storage pandamium:local function."pandamium:triggers/particles/*".username set from storage pandamium:temp username

# removal option
execute if score @s particles matches -999 unless score @s particles_data.trail.type matches 1.. run return run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a trail enabled!"]

execute if score @s particles matches -999 run scoreboard players reset @s particles_data.trail.type
execute if score @s particles matches -999 run function pandamium:impl/database/cache/modify/remove_particles_entry/main with storage pandamium:local function."pandamium:triggers/particles/*"
execute if score @s particles matches -999 run function pandamium:utils/database/players/load/self
execute if score @s particles matches -999 run data remove storage pandamium.db.players:io selected.entry.data.particles.trail
execute if score @s particles matches -999 unless data storage pandamium.db.players:io selected.entry.data.particles.damage run data remove storage pandamium.db.players:io selected.entry.data.particles
execute if score @s particles matches -999 run function pandamium:utils/database/players/save
execute if score @s particles matches -999 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your trail!"]

# restrictions
$execute unless data storage pandamium:dictionary particle_trail_ids."$(particle_trail_id)" run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s particles matches -92 unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Helper!","color":"red"}]
execute if score @s particles matches -93 unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Moderator!","color":"red"}]
execute if score @s particles matches -94 unless score @s staff_perms matches 3.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a Sr. Moderator!","color":"red"}]
execute if score @s particles matches -95 unless score @s staff_perms matches 4.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Admin!","color":"red"}]
execute if score @s particles matches -96 unless score @s staff_perms matches 5.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Owner!","color":"red"}]
execute if score @s particles matches -97 unless score @s vip_rank matches 1 run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a VIP!","color":"red"}]

# save
function pandamium:impl/database/cache/modify/add_particles_entry/main with storage pandamium:local function."pandamium:triggers/particles/*"
function pandamium:utils/database/players/load/self
data remove storage pandamium.db.players:io selected.entry.data.particles.trail
scoreboard players operation @s particles_data.trail.type = @s particles
execute store result storage pandamium.db.players:io selected.entry.data.particles.trail.type short 1 run scoreboard players operation @s particles_data.trail.type *= #-1 constant
function pandamium:utils/database/players/save

# feedback
$tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"trail particles","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"particle_trail_ids.$(particle_trail_id).name","storage":"pandamium:dictionary","interpret":true}],"!"]
