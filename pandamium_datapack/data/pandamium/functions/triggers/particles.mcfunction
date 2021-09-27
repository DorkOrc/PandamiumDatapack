execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message
execute unless score @s gameplay_perms matches 6.. run scoreboard players reset @s particles
execute unless score @s gameplay_perms matches 6.. run scoreboard players reset @s active_particles
execute unless score @s gameplay_perms matches 6.. run scoreboard players reset @s death_particles

# Menu
execute if score @s particles matches 1.. run function pandamium:misc/particles/menu

# Reset
scoreboard players set <can_run> variable 0
execute if score @s particles matches -128..-1 run function pandamium:misc/particles/change_particle/active_particles
execute if score @s particles matches -256..-129 run function pandamium:misc/particles/change_particle/death_particles

# Display an error message
execute if score <can_run> variable matches 0 if score @s particles matches ..-1 if score @s particles = @s particles run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," That is not a valid option!"]

scoreboard players reset @s particles
scoreboard players enable @s particles
