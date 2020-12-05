scoreboard players set <can_accept> variable 1

tag @s add checking_can_accept
execute in pandamium:staff_world as @a[x=0,tag=checking_can_accept] run scoreboard players set <can_accept> variable 0
tag @s remove checking_can_accept

execute if score @s jailed matches 1.. run scoreboard players set <can_accept> variable 0
