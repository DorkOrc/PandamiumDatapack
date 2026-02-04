tag @a[predicate=pandamium:player/supporter_rank/true] add had_supporter_rank
scoreboard players reset @a supporter_rank

data remove storage pandamium:temp users
data modify storage pandamium:temp users set from storage pandamium:supporters import.users
execute if data storage pandamium:temp users[0] run function pandamium:supporters/update_supporter_ranks/loop

execute as @a[predicate=pandamium:player/supporter_rank/false,tag=had_supporter_rank] run function pandamium:supporters/update_supporter_ranks/remove_rank_online
tag @a remove had_supporter_rank
