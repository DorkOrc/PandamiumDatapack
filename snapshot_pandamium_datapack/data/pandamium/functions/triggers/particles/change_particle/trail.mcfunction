# Reset
execute if score @s particles matches -999 unless score @s active_particles matches 1.. store success score <returned> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You don't have a trail enabled!"]
execute if score <returned> variable matches 0 if score @s particles matches -999 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":" Disabled","color":"aqua"}," your trail!"]
execute if score <returned> variable matches 0 if score @s particles matches -999 store success score <returned> variable run scoreboard players reset @s active_particles

# Set Particle
execute if score <returned> variable matches 0 unless score @s particles matches -42..-1 unless score @s particles matches -53..-50 unless score @s particles matches -99..-64 store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -92 unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Helper!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -93 unless score @s staff_perms matches 2.. store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not Moderator!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -94 unless score @s staff_perms matches 3.. store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a Sr. Moderator!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -95 unless score @s staff_perms matches 4.. store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Admin!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -96 unless score @s staff_perms matches 5.. store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not an Owner!","color":"red"}]
execute if score <returned> variable matches 0 if score @s particles matches -97 unless score @s vip_rank matches 1 store success score <returned> variable run tellraw @s [{"text":"[Particles]","color":"dark_red"},{"text":" You are not a VIP!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s active_particles = @s particles
execute if score <returned> variable matches 0 store result score <trail_id> variable run scoreboard players operation @s active_particles *= #-1 constant
execute if score <returned> variable matches 0 run function pandamium:triggers/particles/print_menu/get_trail_name/main
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"}," Set ",{"text":"trail particles","color":"aqua"}," to ",[{"text":"","color":"aqua"},{"nbt":"trail","storage":"pandamium:particles","interpret":true}],"!"]
