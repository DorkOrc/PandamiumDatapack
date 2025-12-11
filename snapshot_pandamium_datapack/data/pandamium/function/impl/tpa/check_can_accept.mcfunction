scoreboard players set <can_accept> variable 1

execute in pandamium:staff_world if entity @a[tag=receiver,x=0,limit=1] unless entity @a[tag=sender,predicate=pandamium:player/min_staff_perms/helper,limit=1] run scoreboard players set <can_accept> variable 0
#execute in pandamium:hub if entity @a[tag=receiver,x=-370,y=43,z=-83,dx=152,dy=6,dz=137,limit=1] unless entity @a[tag=sender,advancements={pandamium:pandamium/map_specific/finish_maze=true},limit=1] run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] jailed matches 1.. run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] disable_tpa_requests matches 1 run scoreboard players set <can_accept> variable 0
execute if score @a[tag=receiver,limit=1] disable_tpa_requests matches 2 if entity @a[limit=1,tag=sender,predicate=!pandamium:player/min_gameplay_perms/player] run scoreboard players set <can_accept> variable 0
execute if score @a[tag=sender,limit=1] parkour.checkpoint matches 0.. run scoreboard players set <can_accept> variable 0
