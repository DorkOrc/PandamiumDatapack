scoreboard players set <returned> variable 0

execute unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:misc/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s particles matches 1.. store success score <returned> variable run function pandamium:misc/particles/print_menu/main

# Run
execute if score <returned> variable matches 0 if score @s particles matches -999..-1 run function pandamium:misc/particles/change_particle/active_particles
execute if score <returned> variable matches 0 if score @s particles matches -1999..-1001 run function pandamium:misc/particles/change_particle/death_particles

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s particles
scoreboard players enable @s particles
