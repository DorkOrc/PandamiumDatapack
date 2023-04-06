# Reset
execute if score @s particles matches -128 store success score <returned> variable unless score @s active_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have any active particles enabled!"]
execute if score <returned> variable matches 0 if score @s particles matches -128 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your active particles!"]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s particles matches -128 run scoreboard players reset @s active_particles

# Set Particle
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s particles matches -42..-1 unless score @s particles matches -52..-50 unless score @s particles matches -90..-64 run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s active_particles = @s particles
execute if score <returned> variable matches 0 run scoreboard players operation @s active_particles *= #-1 constant

execute if score <returned> variable matches 0 run function pandamium:misc/particles/print_menu/get_particle_name/trail
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"trail particles","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"trail","storage":"pandamium:particles","interpret":true}],"!"]
