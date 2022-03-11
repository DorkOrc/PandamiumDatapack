scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s particles matches 1.. run function pandamium:misc/particles/print_menu

# Run
execute if score <returned> variable matches 0 if score @s particles matches -128..-1 run function pandamium:misc/particles/change_particle/active_particles
execute if score <returned> variable matches 0 if score @s particles matches -256..-129 run function pandamium:misc/particles/change_particle/death_particles

scoreboard players reset @s particles
scoreboard players enable @s particles
