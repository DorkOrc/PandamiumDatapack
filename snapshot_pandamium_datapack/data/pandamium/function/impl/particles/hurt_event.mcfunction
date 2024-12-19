execute unless score @s gameplay_perms matches 6.. run return run scoreboard players reset @s particles_data.damage.type

execute if score @s particles_data.damage.type matches 1 run return run function pandamium:impl/particles/hurt_events/explode

execute if score @s particles_data.damage.type matches 3 run return run function pandamium:impl/particles/hurt_events/iron
execute if score @s particles_data.damage.type matches 4 run return run function pandamium:impl/particles/hurt_events/gold
execute if score @s particles_data.damage.type matches 5 run return run function pandamium:impl/particles/hurt_events/diamond

execute if score @s particles_data.damage.type matches 6 if score @s detect.take_damage matches 20..99 run return run function pandamium:impl/particles/hurt_events/gore
execute if score @s particles_data.damage.type matches 6 if score @s detect.take_damage matches 100.. run return run function pandamium:impl/particles/hurt_events/gore_large

execute if score @s particles_data.damage.type matches 7 run return run function pandamium:impl/particles/hurt_events/slime
execute if score @s particles_data.damage.type matches 8 run return run function pandamium:impl/particles/hurt_events/amethyst
execute if score @s particles_data.damage.type matches 9 run return run function pandamium:impl/particles/hurt_events/ender_eye
execute if score @s particles_data.damage.type matches 10 run return run function pandamium:impl/particles/hurt_events/fire
execute if score @s particles_data.damage.type matches 11 run return run function pandamium:impl/particles/hurt_events/soul
execute if score @s particles_data.damage.type matches 12 run return run function pandamium:impl/particles/hurt_events/moss
execute if score @s particles_data.damage.type matches 13 run return run function pandamium:impl/particles/hurt_events/snow
execute if score @s particles_data.damage.type matches 14 run return run function pandamium:impl/particles/hurt_events/smoke
execute if score @s particles_data.damage.type matches 15 run return run function pandamium:impl/particles/hurt_events/witch

execute if score @s particles_data.damage.type matches 17 run return run function pandamium:impl/particles/hurt_events/shriek

execute if score @s particles_data.damage.type matches 19 run return run function pandamium:impl/particles/hurt_events/gust
