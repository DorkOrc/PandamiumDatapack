# Reset
execute if score @s particles matches -256 if score @s death_particles matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," death particles!"]
execute if score @s particles matches -256 unless score @s death_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You do not have any death particles enabled!"]
execute if score @s particles matches -256 run scoreboard players reset @s death_particles
execute if score @s particles matches -256 run scoreboard players reset @s particles

# Set Particle
scoreboard players set <can_run> variable 0
execute if score @s particles matches -136..-129 run scoreboard players set <can_run> variable 1

execute if score <can_run> variable matches 1 run scoreboard players operation @s death_particles = @s particles
execute if score <can_run> variable matches 1 run scoreboard players operation @s death_particles *= <-1> variable

execute if score <can_run> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Enabled","color":"aqua"}," death particle ",{"score":{"name":"@s","objective":"death_particles"},"color":"aqua","italic":false},"!"]
