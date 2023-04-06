data modify storage pandamium:particles death_event set value '{"text":"Not Set","color":"gray"}'
scoreboard players operation <death_event_id> variable = @s death_particles
execute if score @s death_particles matches 1.. run function pandamium:misc/particles/print_menu/get_particle_name/death_event/run
