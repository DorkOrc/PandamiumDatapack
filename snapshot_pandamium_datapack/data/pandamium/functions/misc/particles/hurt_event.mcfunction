execute if score @s death_particles matches 1 run function pandamium:misc/particles/hurt_events/explode

execute if score @s death_particles matches 3 run function pandamium:misc/particles/hurt_events/iron
execute if score @s death_particles matches 4 run function pandamium:misc/particles/hurt_events/gold
execute if score @s death_particles matches 5 run function pandamium:misc/particles/hurt_events/diamond

execute if score @s death_particles matches 6 if score @s detect.take_damage matches 20..99 run function pandamium:misc/particles/hurt_events/gore
execute if score @s death_particles matches 6 if score @s detect.take_damage matches 100.. run function pandamium:misc/particles/hurt_events/gore_large

execute if score @s death_particles matches 7 run function pandamium:misc/particles/hurt_events/slime
execute if score @s death_particles matches 8 run function pandamium:misc/particles/hurt_events/amethyst
execute if score @s death_particles matches 9 run function pandamium:misc/particles/hurt_events/ender_eye
execute if score @s death_particles matches 10 run function pandamium:misc/particles/hurt_events/fire
execute if score @s death_particles matches 11 run function pandamium:misc/particles/hurt_events/soul
execute if score @s death_particles matches 12 run function pandamium:misc/particles/hurt_events/moss
execute if score @s death_particles matches 13 run function pandamium:misc/particles/hurt_events/snow
execute if score @s death_particles matches 14 run function pandamium:misc/particles/hurt_events/smoke
execute if score @s death_particles matches 15 run function pandamium:misc/particles/hurt_events/witch

execute if score @s death_particles matches 17 run function pandamium:misc/particles/hurt_events/shriek
