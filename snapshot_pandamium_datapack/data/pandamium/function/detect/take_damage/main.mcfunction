# handle death
tag @s add take_damage.this
execute store success score <died> variable unless entity @e[type=player,tag=take_damage.this,limit=1]
tag @s remove take_damage.this
execute if score <died> variable matches 1 run function pandamium:detect/die/main

#
execute on vehicle if entity @s[type=minecraft:interaction,tag=pandamium.custom_entity.type.seat] on passengers run ride @s[type=minecraft:player] dismount

execute if score <died> variable matches 0 at @s[gamemode=!spectator,scores={death_particles=1..,detect.take_damage=21..}] run function pandamium:impl/particles/hurt_event

#
scoreboard players reset @s detect.take_damage
advancement revoke @s only pandamium:detect/take_damage
