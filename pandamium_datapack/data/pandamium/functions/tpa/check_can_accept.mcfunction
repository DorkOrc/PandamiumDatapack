scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @p[tag=receiver,x=0] unless entity @p[tag=sender,scores={staff_perms=1..}] run scoreboard players set <can_accept> variable 0
execute in overworld if entity @p[tag=receiver,x=-166,y=-52,z=-110,dx=128,dy=75,dz=133] unless entity @p[tag=sender,scores={gameplay_perms=6..}] run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] jailed matches 1.. run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] disable_tp_rqsts matches 1 run scoreboard players set <can_accept> variable 0
