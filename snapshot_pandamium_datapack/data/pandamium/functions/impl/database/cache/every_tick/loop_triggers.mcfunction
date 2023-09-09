function pandamium:impl/database/cache/every_tick/try_run_trigger with storage pandamium:temp entries[-1].triggers[-1]

data remove storage pandamium:temp entries[-1].triggers[-1]
execute if data storage pandamium:temp triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers
