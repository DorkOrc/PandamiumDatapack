scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @a[tag=receiver,x=0,limit=1] unless entity @a[tag=sender,scores={staff_perms=1..},limit=1] run scoreboard players set <can_accept> variable 0
execute if entity @a[tag=receiver,predicate=pandamium:in_donator_area,limit=1] unless entity @a[tag=sender,scores={gameplay_perms=6..},limit=1] run scoreboard players set <can_accept> variable 0
execute in overworld if entity @a[tag=receiver,x=-370,y=43,z=-83,dx=152,dy=6,dz=137,limit=1] unless entity @a[tag=sender,advancements={pandamium:pandamium/map_specific/finish_maze=true},limit=1] run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] jailed matches 1.. run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] disable_tpa_requests matches 1 run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] disable_tpa_requests matches 2 if score @a[tag=sender,limit=1] gameplay_perms matches 0 run scoreboard players set <can_accept> variable 0
execute if score @a[tag=sender,limit=1] parkour.checkpoint matches 0.. run scoreboard players set <can_accept> variable 0
