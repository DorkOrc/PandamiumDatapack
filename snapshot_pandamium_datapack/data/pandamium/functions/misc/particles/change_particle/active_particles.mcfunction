# Reset
execute if score @s particles matches -128 store success score <returned> variable unless score @s active_particles matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have any active particles enabled!"]
execute if score <returned> variable matches 0 if score @s particles matches -128 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your active particles!"]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s particles matches -128 run scoreboard players reset @s active_particles

# Set Particle
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s particles matches -41..-1 unless score @s particles matches -81..-64 unless score @s particles matches -51..-50 run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s active_particles = @s particles
execute if score <returned> variable matches 0 run scoreboard players operation @s active_particles *= <-1> variable

execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Enabled","color":"aqua"}," active particle ",{"score":{"name":"@s","objective":"active_particles"},"color":"aqua","italic":false},"!"]
