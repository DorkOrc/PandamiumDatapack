scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @p[tag=receiver,x=0] unless entity @p[tag=sender,scores={staff_perms=1..}] run scoreboard players set <can_accept> variable 0
execute in overworld if entity @p[tag=receiver,predicate=pandamium:in_donator_area] unless entity @p[tag=sender,scores={gameplay_perms=6..}] run scoreboard players set <can_accept> variable 0
execute in overworld if entity @p[tag=receiver,x=-370,y=43,z=-83,dx=152,dy=6,dz=137] unless entity @p[tag=sender,advancements={pandamium:pandamium/map_specific/finish_maze=true}] run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] jailed matches 1.. run scoreboard players set <can_accept> variable 0
execute if score @p[tag=receiver] disable_tpa_requests matches 1 run scoreboard players set <can_accept> variable 0
execute if score @p[tag=sender] parkour.checkpoint matches 0.. run scoreboard players set <can_accept> variable 0
