execute if score @s death_particles matches 1 run function pandamium:misc/particles/hurt_particles/explode

execute if score @s death_particles matches 3 run function pandamium:misc/particles/hurt_particles/iron
execute if score @s death_particles matches 4 run function pandamium:misc/particles/hurt_particles/gold
execute if score @s death_particles matches 5 run function pandamium:misc/particles/hurt_particles/diamond

execute if score @s death_particles matches 6 if score @s detect.take_damage matches 20..99 run function pandamium:misc/particles/hurt_particles/gore
execute if score @s death_particles matches 6 if score @s detect.take_damage matches 100.. run function pandamium:misc/particles/hurt_particles/gore_large

execute if score @s death_particles matches 7 run function pandamium:misc/particles/hurt_particles/slime
execute if score @s death_particles matches 8 run function pandamium:misc/particles/hurt_particles/amethyst
execute if score @s death_particles matches 9 run function pandamium:misc/particles/hurt_particles/ender_eye
execute if score @s death_particles matches 10 run function pandamium:misc/particles/hurt_particles/fire
execute if score @s death_particles matches 11 run function pandamium:misc/particles/hurt_particles/soul
execute if score @s death_particles matches 12 run function pandamium:misc/particles/hurt_particles/moss
execute if score @s death_particles matches 13 run function pandamium:misc/particles/hurt_particles/snow
execute if score @s death_particles matches 14 run function pandamium:misc/particles/hurt_particles/smoke
execute if score @s death_particles matches 15 run function pandamium:misc/particles/hurt_particles/witch

execute if score @s death_particles matches 17 run function pandamium:misc/particles/hurt_particles/shriek
