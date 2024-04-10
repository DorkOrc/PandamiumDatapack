execute if score @s active_particles matches 64 run function pandamium:impl/particles/custom_trails/head/halo
execute if score @s active_particles matches 65 run function pandamium:impl/particles/custom_trails/head/devil_horns
execute if score @s active_particles matches 66 run function pandamium:impl/particles/custom_trails/head/olex
execute if score @s active_particles matches 67 run function pandamium:impl/particles/custom_trails/head/tears
execute if score @s active_particles matches 68 run function pandamium:impl/particles/custom_trails/head/blush
execute if score @s active_particles matches 69 run function pandamium:impl/particles/custom_trails/head/axolotl_gills
execute if score @s active_particles matches 70 run function pandamium:impl/particles/custom_trails/head/warden_ears
execute if score @s active_particles matches 71 run function pandamium:impl/particles/custom_trails/head/glow_squid
execute if score @s active_particles matches 72 run function pandamium:impl/particles/custom_trails/head/goat_ears_and_horns

execute if score @s active_particles matches 76 run function pandamium:impl/particles/custom_trails/head/arrow
execute if score @s active_particles matches 77 run function pandamium:impl/particles/custom_trails/head/exclamation_mark
execute if score @s active_particles matches 78 run function pandamium:impl/particles/custom_trails/head/question_mark

execute if score @s active_particles matches 83 run function pandamium:impl/particles/custom_trails/head/crown
execute if score @s active_particles matches 84 run function pandamium:impl/particles/custom_trails/head/phoenix_horns

scoreboard players set <returned_frog_particle_variant> variable 0
execute if score @s active_particles matches 81 if biome ~ ~ ~ #spawns_warm_variant_frogs store success score <returned_frog_particle_variant> variable run function pandamium:impl/particles/custom_trails/head/frog_warm
execute if score @s active_particles matches 81 if score <returned_frog_particle_variant> variable matches 0 if biome ~ ~ ~ #spawns_cold_variant_frogs store success score <returned_frog_particle_variant> variable run function pandamium:impl/particles/custom_trails/head/frog_cold
execute if score @s active_particles matches 81 if score <returned_frog_particle_variant> variable matches 0 run function pandamium:impl/particles/custom_trails/head/frog_temperate

execute if score @s active_particles matches 85 run function pandamium:impl/particles/custom_trails/head/sniffer_ears
execute if score @s active_particles matches 86 run function pandamium:impl/particles/custom_trails/head/camel_ears

execute if score @s active_particles matches 90 run function pandamium:impl/particles/custom_trails/head/sundroid
execute if score @s active_particles matches 91 run function pandamium:impl/particles/custom_trails/head/donator_star
execute if score @s active_particles matches 92 run function pandamium:impl/particles/custom_trails/head/helper_shield
execute if score @s active_particles matches 93 run function pandamium:impl/particles/custom_trails/head/mod_shield
execute if score @s active_particles matches 94 run function pandamium:impl/particles/custom_trails/head/srmod_shield
execute if score @s active_particles matches 95 run function pandamium:impl/particles/custom_trails/head/admin_shield
execute if score @s active_particles matches 96 run function pandamium:impl/particles/custom_trails/head/owner_shield
execute if score @s active_particles matches 97 run function pandamium:impl/particles/custom_trails/head/vip_gem
execute if score @s active_particles matches 98 run function pandamium:impl/particles/custom_trails/head/plumb_bob

execute if score @s active_particles matches 51 run function pandamium:impl/particles/custom_trails/head/pepe_stare
execute if score @s active_particles matches 52 run function pandamium:impl/particles/custom_trails/head/technoblade
execute if score @s active_particles matches 53 run function pandamium:impl/particles/custom_trails/head/shrek
