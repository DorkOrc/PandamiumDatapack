execute on vehicle if entity @s[type=minecraft:interaction,tag=pandamium.custom_entity.type.seat] on passengers run ride @s[type=minecraft:player] dismount

execute unless score @s detect.die matches 1.. at @s[gamemode=!spectator,scores={death_particles=1..,detect.take_damage=21..}] run function pandamium:impl/particles/hurt_event

scoreboard players set @s sneak_to_sit.sit_cancelled_timer 0

# handle death
execute if score @s detect.die matches 1.. run function pandamium:detect/die/main

#
scoreboard players reset @s detect.take_damage
scoreboard players reset @s detect.die
advancement revoke @s only pandamium:detect/take_damage
