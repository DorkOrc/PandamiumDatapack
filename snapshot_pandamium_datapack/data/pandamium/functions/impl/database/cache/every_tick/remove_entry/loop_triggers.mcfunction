function pandamium:impl/database/cache/every_tick/remove_entry/try_remove_trigger with storage pandamium:temp entries[-1].triggers[-1]

data remove storage pandamium:temp entries[-1].triggers[-1]
execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers
