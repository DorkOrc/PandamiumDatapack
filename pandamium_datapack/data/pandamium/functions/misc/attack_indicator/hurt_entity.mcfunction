advancement revoke @s only pandamium:hurt_entity

tag @s add player
execute if score @s attack_indicator matches 1 at @s as @e[limit=1,sort=nearest,distance=..10,nbt={HurtTime:10s}] run function pandamium:misc/attack_indicator/as_entity
tag @s remove player
