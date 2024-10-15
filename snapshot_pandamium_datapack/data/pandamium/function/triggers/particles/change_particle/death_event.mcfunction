# Reset
execute if score @s particles matches -1999 unless score @s death_particles matches 1.. run return run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a death event enabled!"]

execute if score @s particles matches -1999 run scoreboard players reset @s death_particles
execute if score @s particles matches -1999 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your death event!"]

# Set Particle
execute unless score @s particles matches -1019..-1001 run return run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players operation @s death_particles = @s particles
scoreboard players add @s death_particles 1000
execute store result score <death_event_id> variable run scoreboard players operation @s death_particles *= #-1 constant
function pandamium:triggers/particles/print_menu/get_death_event_name/main
tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"death event","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"death_event","storage":"pandamium:temp","interpret":true}],"!"]
