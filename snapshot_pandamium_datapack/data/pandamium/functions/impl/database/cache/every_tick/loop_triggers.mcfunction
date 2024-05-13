execute unless data storage pandamium:temp entries[-1].triggers[-1].disabled run function pandamium:impl/database/cache/every_tick/try_run_trigger with storage pandamium:temp entries[-1].triggers[-1]

data remove storage pandamium:temp entries[-1].triggers[-1]
execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers
execute if score @s optn.disable_dynamic_triggers.home_names matches 1 run data modify storage pandamium:cache online_players[-1].triggers[{trigger:"home"}].disabled set value 1b
