# Reset
execute if score @s particles matches -999 unless score @s active_particles matches 1.. run return run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a trail enabled!"]

execute if score @s particles matches -999 run scoreboard players reset @s active_particles
execute if score @s particles matches -999 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your trail!"]

# Set Particle
execute unless score @s particles matches -46..-1 unless score @s particles matches -53..-50 unless score @s particles matches -99..-64 run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s particles matches -92 unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Helper!","color":"red"}]
execute if score @s particles matches -93 unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Moderator!","color":"red"}]
execute if score @s particles matches -94 unless score @s staff_perms matches 3.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a Sr. Moderator!","color":"red"}]
execute if score @s particles matches -95 unless score @s staff_perms matches 4.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Admin!","color":"red"}]
execute if score @s particles matches -96 unless score @s staff_perms matches 5.. run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Owner!","color":"red"}]
execute if score @s particles matches -97 unless score @s vip_rank matches 1 run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a VIP!","color":"red"}]

scoreboard players operation @s active_particles = @s particles
execute store result score <trail_id> variable run scoreboard players operation @s active_particles *= #-1 constant
function pandamium:triggers/particles/print_menu/get_trail_name/main
tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"trail particles","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"trail","storage":"pandamium:temp","interpret":true}],"!"]
