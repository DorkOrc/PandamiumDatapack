data modify storage pandamium:particles trail set value '{"text":"Not Set","color":"gray"}'
scoreboard players operation <trail_id> variable = @s active_particles
execute if score @s active_particles matches 1.. run function pandamium:misc/particles/print_menu/get_particle_name/trail/run
