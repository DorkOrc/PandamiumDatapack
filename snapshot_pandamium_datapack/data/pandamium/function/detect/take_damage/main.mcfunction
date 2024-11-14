execute if predicate pandamium:riding_aec_seat run ride @s dismount

execute if score @s death_particles matches 1.. unless score @s detect.die matches 1.. if score @s detect.take_damage matches 21.. run function pandamium:impl/particles/hurt_event

scoreboard players reset @s detect.take_damage
advancement revoke @s only pandamium:detect/take_damage
