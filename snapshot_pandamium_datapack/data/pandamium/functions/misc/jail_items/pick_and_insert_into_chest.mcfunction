execute unless block ~ ~ ~ chest run setblock ~ ~ ~ chest[facing=west,type=right]
execute unless block ~ ~ ~1 chest run setblock ~ ~ ~1 chest[facing=west,type=left]

# check if item can be inserted into left chest
function pandamium:misc/jail_items/check_can_insert
scoreboard players operation <can_insert_left> variable = <can_insert> variable
execute if score <can_insert_left> variable matches 1 run loot insert ~ ~ ~ mine 0 1 0 air{drop_contents:1b}

# ELSE check if item can be inserted into right chest
execute if score <can_insert_left> variable matches 0 positioned ~ ~ ~1 run function pandamium:misc/jail_items/check_can_insert
execute if score <can_insert_left> variable matches 0 if score <can_insert> variable matches 1 run loot insert ~ ~ ~1 mine 0 1 0 air{drop_contents:1b}

# ELSE teleport up 1, and loop
execute if score <can_insert_left> variable matches 0 if score <can_insert> variable matches 0 positioned ~ ~1 ~ run function pandamium:misc/jail_items/pick_and_insert_into_chest
