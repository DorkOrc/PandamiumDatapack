execute unless score @s gameplay_perms matches 6.. run return run scoreboard players reset @s particles_data.damage.type

execute if score @s particles_data.damage.type matches 1 run return run function pandamium:impl/particles/death_events/explode
execute if score @s particles_data.damage.type matches 2 run return run function pandamium:impl/particles/death_events/firework_rocket
execute if score @s particles_data.damage.type matches 3 run return run function pandamium:impl/particles/death_events/iron
execute if score @s particles_data.damage.type matches 4 run return run function pandamium:impl/particles/death_events/gold
execute if score @s particles_data.damage.type matches 5 run return run function pandamium:impl/particles/death_events/diamond
execute if score @s particles_data.damage.type matches 6 run return run function pandamium:impl/particles/death_events/gore
execute if score @s particles_data.damage.type matches 7 run return run function pandamium:impl/particles/death_events/slime
execute if score @s particles_data.damage.type matches 8 run return run function pandamium:impl/particles/death_events/amethyst
execute if score @s particles_data.damage.type matches 9 run return run function pandamium:impl/particles/death_events/ender_eye
execute if score @s particles_data.damage.type matches 10 run return run function pandamium:impl/particles/death_events/fire
execute if score @s particles_data.damage.type matches 11 run return run function pandamium:impl/particles/death_events/soul
execute if score @s particles_data.damage.type matches 12 run return run function pandamium:impl/particles/death_events/moss
execute if score @s particles_data.damage.type matches 13 run return run function pandamium:impl/particles/death_events/snow
execute if score @s particles_data.damage.type matches 14 run return run function pandamium:impl/particles/death_events/smoke
execute if score @s particles_data.damage.type matches 15 run return run function pandamium:impl/particles/death_events/witch
execute if score @s particles_data.damage.type matches 16 run return run function pandamium:impl/particles/death_events/storm
execute if score @s particles_data.damage.type matches 17 run return run function pandamium:impl/particles/death_events/shriek
execute if score @s particles_data.damage.type matches 18 run return run function pandamium:impl/particles/death_events/sonic_boom
execute if score @s particles_data.damage.type matches 19 run return run function pandamium:impl/particles/death_events/gust
