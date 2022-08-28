execute unless score @s detect.die matches 1.. if score @s detect.take_damage matches 20.. run function pandamium:misc/particles/hurt_event

scoreboard players reset @s detect.take_damage
advancement revoke @s only pandamium:detect/take_damage
