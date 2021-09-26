scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @p[tag=receiver,x=0] unless entity @p[tag=sender,scores={staff_perms=1..}] run scoreboard players set <can_accept> variable 0
#execute in overworld if entity @p[tag=receiver,x=-95,y=-64,z=-110,dx=95,dy=80,dz=140] unless entity @p[tag=sender,scores={gameplay_perms=6..}] run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] jailed matches 1.. run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] disable_tp_rqsts matches 1 run scoreboard players set <can_accept> variable 0
