execute unless score @s gameplay_perms matches 6.. run return run scoreboard players reset @s particles_data.damage_effect.type

execute if score @s particles_data.damage_effect.type matches 1 run return run function pandamium:impl/particles/damage_effects/death/explode
execute if score @s particles_data.damage_effect.type matches 2 run return run function pandamium:impl/particles/damage_effects/death/firework_rocket
execute if score @s particles_data.damage_effect.type matches 3 run return run function pandamium:impl/particles/damage_effects/death/iron
execute if score @s particles_data.damage_effect.type matches 4 run return run function pandamium:impl/particles/damage_effects/death/gold
execute if score @s particles_data.damage_effect.type matches 5 run return run function pandamium:impl/particles/damage_effects/death/diamond
execute if score @s particles_data.damage_effect.type matches 6 run return run function pandamium:impl/particles/damage_effects/death/gore
execute if score @s particles_data.damage_effect.type matches 7 run return run function pandamium:impl/particles/damage_effects/death/slime
execute if score @s particles_data.damage_effect.type matches 8 run return run function pandamium:impl/particles/damage_effects/death/amethyst
execute if score @s particles_data.damage_effect.type matches 9 run return run function pandamium:impl/particles/damage_effects/death/ender_eye
execute if score @s particles_data.damage_effect.type matches 10 run return run function pandamium:impl/particles/damage_effects/death/fire
execute if score @s particles_data.damage_effect.type matches 11 run return run function pandamium:impl/particles/damage_effects/death/soul
execute if score @s particles_data.damage_effect.type matches 12 run return run function pandamium:impl/particles/damage_effects/death/moss
execute if score @s particles_data.damage_effect.type matches 13 run return run function pandamium:impl/particles/damage_effects/death/snow
execute if score @s particles_data.damage_effect.type matches 14 run return run function pandamium:impl/particles/damage_effects/death/smoke
execute if score @s particles_data.damage_effect.type matches 15 run return run function pandamium:impl/particles/damage_effects/death/witch
execute if score @s particles_data.damage_effect.type matches 16 run return run function pandamium:impl/particles/damage_effects/death/storm
execute if score @s particles_data.damage_effect.type matches 17 run return run function pandamium:impl/particles/damage_effects/death/shriek
execute if score @s particles_data.damage_effect.type matches 18 run return run function pandamium:impl/particles/damage_effects/death/sonic_boom
execute if score @s particles_data.damage_effect.type matches 19 run return run function pandamium:impl/particles/damage_effects/death/gust
