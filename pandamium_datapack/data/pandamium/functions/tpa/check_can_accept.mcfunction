scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @p[tag=receiver,x=0] unless entity @p[tag=sender,scores={staff_perms=1..}] run scoreboard players set <can_accept> variable 0
#execute in overworld if entity @p[tag=receiver,x=-131,y=16,z=-10,dx=60,dy=34,dz=35] unless entity @p[tag=sender,scores={gameplay_perms=5..}] run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] jailed matches 1.. run scoreboard players set <can_accept> variable 0
