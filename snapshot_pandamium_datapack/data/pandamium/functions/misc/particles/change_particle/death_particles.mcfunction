# Reset
execute if score @s particles matches -256 store success score <returned> variable unless score @s death_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have any death particles enabled!"]
execute if score <returned> variable matches 0 if score @s particles matches -256 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your death particles!"]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s particles matches -256 run scoreboard players reset @s death_particles

# Set Particle
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s particles matches -146..-129 run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s death_particles = @s particles
execute if score <returned> variable matches 0 run scoreboard players add @s death_particles 128
execute if score <returned> variable matches 0 run scoreboard players operation @s death_particles *= <-1> variable

execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Enabled","color":"aqua"}," death particle ",{"score":{"name":"@s","objective":"death_particles"},"color":"aqua","italic":false},"!"]
