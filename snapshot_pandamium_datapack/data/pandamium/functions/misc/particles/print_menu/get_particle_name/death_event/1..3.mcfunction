execute if score <death_event_id> variable matches 1..2 run function pandamium:misc/particles/print_menu/get_particle_name/death_event/1..2
execute if score <death_event_id> variable matches 3 run data modify storage pandamium:particles death_event set value '{"text":"Iron"}'
