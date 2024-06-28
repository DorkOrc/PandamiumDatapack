# arguments: username, id

scoreboard players set <player_exists> variable 1

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers
