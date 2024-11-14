data modify storage pandamium:templates particles.color set value [0f,0f,0f,1f]
execute store result storage pandamium:templates particles.color[0] float 0.01 run random value 50..100
execute store result storage pandamium:templates particles.color[1] float 0.01 run random value 50..100
execute store result storage pandamium:templates particles.color[2] float 0.01 run random value 50..100
