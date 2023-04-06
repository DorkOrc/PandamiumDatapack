execute if score <trail_id> variable matches 1..2 run function pandamium:misc/particles/print_menu/get_particle_name/trail/1..2
execute if score <trail_id> variable matches 3 run data modify storage pandamium:particles trail set value '{"text":"End Rod"}'
