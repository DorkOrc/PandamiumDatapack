scoreboard players set <player_exists> variable 0
execute if data storage pandamium:temp entries[-1].username run function pandamium:impl/database/cache/every_tick/try_select_player with storage pandamium:temp entries[-1]
execute if score <player_exists> variable matches 0 run function pandamium:impl/database/cache/every_tick/remove_entry/main with storage pandamium:temp entries[-1]

data remove storage pandamium:temp entries[-1]
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/cache/every_tick/loop
