execute store result storage pandamium:templates macro.x__y__z.x float 0.01 run random value -707..707
execute store result storage pandamium:templates macro.x__y__z.y float 0.01 run random value 2000..3400
execute store result storage pandamium:templates macro.x__y__z.z float 0.01 run random value -707..707
execute if score <spawn_flying_eyeballs> variable matches 0 run function pandamium:impl/phantoms/spawn_phantom/summon_random_phantom with storage pandamium:templates macro.x__y__z
execute if score <spawn_flying_eyeballs> variable matches 1 run function pandamium:impl/phantoms/spawn_phantom/summon_random_flying_eyeball with storage pandamium:templates macro.x__y__z
