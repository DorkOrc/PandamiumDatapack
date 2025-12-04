# arguments: type

# get username
function pandamium:utils/get/username
data modify storage pandamium:local function."pandamium:triggers/particles/*".username set from storage pandamium:temp username

# removal option
execute if score @s particles matches -999 unless score @s particles_data.trail.type matches 1.. run return run tellraw @s [{text:"",color:"red"},{text:"[Particles]",color:"dark_red"},{text:" You don't have a trail enabled!"}]

execute if score @s particles matches -999 run scoreboard players reset @s particles_data.trail.type
execute if score @s particles matches -999 run function pandamium:impl/database/cache/modify/remove_movement_trail_entry/main with storage pandamium:local function."pandamium:triggers/particles/*"
execute if score @s particles matches -999 run function pandamium:utils/database/players/load/self
execute if score @s particles matches -999 run data remove storage pandamium.db.players:io selected.entry.data.particles.trail
execute if score @s particles matches -999 unless data storage pandamium.db.players:io selected.entry.data.particles.damage run data remove storage pandamium.db.players:io selected.entry.data.particles
execute if score @s particles matches -999 run function pandamium:utils/database/players/save
execute if score @s particles matches -999 run return run tellraw @s [{text:"",color:"green"},{text:"[Particles]",color:"dark_green"},{text:" Disabled",color:"aqua"}," your trail!"]

# restrictions
$execute unless data storage pandamium:dictionary movement_trail_types."$(type)" run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s particles matches -92 unless predicate pandamium:player/min_staff_perms/helper run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not Helper!",color:"red"}]
execute if score @s particles matches -93 unless predicate pandamium:player/min_staff_perms/moderator run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not Moderator!",color:"red"}]
execute if score @s particles matches -94 unless predicate pandamium:player/min_staff_perms/senior_moderator run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not a Sr. Moderator!",color:"red"}]
execute if score @s particles matches -95 unless predicate pandamium:player/min_staff_perms/admin run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not an Admin!",color:"red"}]
execute if score @s particles matches -96 unless predicate pandamium:player/min_staff_perms/owner run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not an Owner!",color:"red"}]
execute if score @s particles matches -97 unless score @s vip_rank matches 1 run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" You are not a VIP!",color:"red"}]

# save
function pandamium:impl/database/cache/modify/add_movement_trail_entry/main with storage pandamium:local function."pandamium:triggers/particles/*"
function pandamium:utils/database/players/load/self
data remove storage pandamium.db.players:io selected.entry.data.particles.trail
scoreboard players operation @s particles_data.trail.type = @s particles
execute store result storage pandamium.db.players:io selected.entry.data.particles.trail.type short 1 run scoreboard players operation @s particles_data.trail.type *= #-1 constant
function pandamium:utils/database/players/save

# feedback
$tellraw @s [{text:"",color:"green"},{text:"[Particles]",color:"dark_green"}," Set ",{text:"trail particles",color:"aqua"}," to ",{text:"",color:"aqua",extra:[{nbt:"movement_trail_types.$(type).name",storage:"pandamium:dictionary",interpret:true}]},"!"]
