execute unless score @s gameplay_perms matches 6.. run return run scoreboard players reset @s particles_data.damage_effect.type

execute if score @s particles_data.damage_effect.type matches 1 run return run function pandamium:impl/particles/damage_effects/hurt/explode

execute if score @s particles_data.damage_effect.type matches 3 run return run function pandamium:impl/particles/damage_effects/hurt/iron
execute if score @s particles_data.damage_effect.type matches 4 run return run function pandamium:impl/particles/damage_effects/hurt/gold
execute if score @s particles_data.damage_effect.type matches 5 run return run function pandamium:impl/particles/damage_effects/hurt/diamond

execute if score @s particles_data.damage_effect.type matches 6 if score @s detect.take_damage matches 20..99 run return run function pandamium:impl/particles/damage_effects/hurt/gore
execute if score @s particles_data.damage_effect.type matches 6 if score @s detect.take_damage matches 100.. run return run function pandamium:impl/particles/damage_effects/hurt/gore_large

execute if score @s particles_data.damage_effect.type matches 7 run return run function pandamium:impl/particles/damage_effects/hurt/slime
execute if score @s particles_data.damage_effect.type matches 8 run return run function pandamium:impl/particles/damage_effects/hurt/amethyst
execute if score @s particles_data.damage_effect.type matches 9 run return run function pandamium:impl/particles/damage_effects/hurt/ender_eye
execute if score @s particles_data.damage_effect.type matches 10 run return run function pandamium:impl/particles/damage_effects/hurt/fire
execute if score @s particles_data.damage_effect.type matches 11 run return run function pandamium:impl/particles/damage_effects/hurt/soul
execute if score @s particles_data.damage_effect.type matches 12 run return run function pandamium:impl/particles/damage_effects/hurt/moss
execute if score @s particles_data.damage_effect.type matches 13 run return run function pandamium:impl/particles/damage_effects/hurt/snow
execute if score @s particles_data.damage_effect.type matches 14 run return run function pandamium:impl/particles/damage_effects/hurt/smoke
execute if score @s particles_data.damage_effect.type matches 15 run return run function pandamium:impl/particles/damage_effects/hurt/witch

execute if score @s particles_data.damage_effect.type matches 17 run return run function pandamium:impl/particles/damage_effects/hurt/shriek

execute if score @s particles_data.damage_effect.type matches 19 run return run function pandamium:impl/particles/damage_effects/hurt/gust
