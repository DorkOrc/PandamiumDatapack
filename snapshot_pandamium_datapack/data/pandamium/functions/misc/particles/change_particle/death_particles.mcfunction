# Reset
execute if score @s particles matches -1999 store success score <returned> variable unless score @s death_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a death event enabled!"]
execute if score <returned> variable matches 0 if score @s particles matches -1999 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your death event!"]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s particles matches -1999 run scoreboard players reset @s death_particles

# Set Particle
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s particles matches -1018..-1001 run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s death_particles = @s particles
execute if score <returned> variable matches 0 run scoreboard players add @s death_particles 1000
execute if score <returned> variable matches 0 run scoreboard players operation @s death_particles *= #-1 constant

execute if score <returned> variable matches 0 run function pandamium:misc/particles/print_menu/get_particle_name/death_event
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"death event","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"death_event","storage":"pandamium:particles","interpret":true}],"!"]
