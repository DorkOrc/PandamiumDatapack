execute store result score <gametime> variable run time query gametime
tag @s add player
execute at @s as @e[type=interaction,distance=..10] run function pandamium:detect/interaction_interact/as_interaction
tag @s remove player

advancement revoke @s only pandamium:detect/interaction_interact
