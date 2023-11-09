execute unless score @s gameplay_perms matches 6.. run scoreboard players reset @s death_particles

execute if score @s death_particles matches 1 run function pandamium:impl/particles/death_events/explode
execute if score @s death_particles matches 2 run function pandamium:impl/particles/death_events/firework_rocket
execute if score @s death_particles matches 3 run function pandamium:impl/particles/death_events/iron
execute if score @s death_particles matches 4 run function pandamium:impl/particles/death_events/gold
execute if score @s death_particles matches 5 run function pandamium:impl/particles/death_events/diamond
execute if score @s death_particles matches 6 run function pandamium:impl/particles/death_events/gore
execute if score @s death_particles matches 7 run function pandamium:impl/particles/death_events/slime
execute if score @s death_particles matches 8 run function pandamium:impl/particles/death_events/amethyst
execute if score @s death_particles matches 9 run function pandamium:impl/particles/death_events/ender_eye
execute if score @s death_particles matches 10 run function pandamium:impl/particles/death_events/fire
execute if score @s death_particles matches 11 run function pandamium:impl/particles/death_events/soul
execute if score @s death_particles matches 12 run function pandamium:impl/particles/death_events/moss
execute if score @s death_particles matches 13 run function pandamium:impl/particles/death_events/snow
execute if score @s death_particles matches 14 run function pandamium:impl/particles/death_events/smoke
execute if score @s death_particles matches 15 run function pandamium:impl/particles/death_events/witch
execute if score @s death_particles matches 16 run function pandamium:impl/particles/death_events/storm
execute if score @s death_particles matches 17 run function pandamium:impl/particles/death_events/shriek
execute if score @s death_particles matches 18 run function pandamium:impl/particles/death_events/sonic_boom
execute if score @s death_particles matches 19 run function pandamium:impl/particles/death_events/gust
