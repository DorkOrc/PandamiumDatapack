function pandamium:impl/dynamic_triggers/remove_alias_target/main with storage pandamium:temp entries[-1].dynamic_triggers[-1]

data remove storage pandamium:temp entries[-1].dynamic_triggers[-1]
execute if data storage pandamium:temp entries[-1].dynamic_triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_dynamic_triggers
