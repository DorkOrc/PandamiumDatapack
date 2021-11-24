# Reset
execute if score @s particles matches -128 if score @s active_particles matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," active particles!"]
execute if score @s particles matches -128 unless score @s active_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You do not have any active particles enabled!"]
execute if score @s particles matches -128 run scoreboard players reset @s active_particles
execute if score @s particles matches -128 run scoreboard players reset @s particles

# Set Particle
scoreboard players set <can_run> variable 0
execute if score @s particles matches -38..-1 run scoreboard players set <can_run> variable 1
execute if score @s particles matches -80..-64 run scoreboard players set <can_run> variable 1
execute if score @s particles matches -51..-50 run scoreboard players set <can_run> variable 1

execute if score <can_run> variable matches 1 run scoreboard players operation @s active_particles = @s particles
execute if score <can_run> variable matches 1 run scoreboard players operation @s active_particles *= <-1> variable

execute if score <can_run> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Enabled","color":"aqua"}," active particle ",{"score":{"name":"@s","objective":"active_particles"},"color":"aqua","italic":false},"!"]
