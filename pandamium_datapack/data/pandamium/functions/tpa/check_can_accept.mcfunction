tag @s add checking_can_accept
execute in pandamium:staff_world store success score <can_accept> variable unless entity @a[x=0,tag=checking_can_accept]
tag @s remove checking_can_accept

execute if score @s jailed matches 1.. run scoreboard players set <can_accept> variable 0
