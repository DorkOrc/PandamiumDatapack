# handle hurt
execute unless score @s detect.die matches 1.. at @s[gamemode=!spectator,scores={particles_data.damage_effect.type=1..,detect.take_damage=21..}] run function pandamium:impl/particles/damage_effects/on_hurt

# handle death
execute if score @s detect.die matches 1.. run function pandamium:detect/die/main

#
scoreboard players reset @s detect.take_damage
scoreboard players reset @s detect.die
advancement revoke @s only pandamium:detect/take_damage
