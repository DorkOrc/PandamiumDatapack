# check done
execute if score <completed_database_fix_24_12_2023> global matches 1 run return 0

# pre
data remove storage pandamium.db:regions entries[].chunks[].homes[]

# queue
data modify storage pandamium:queue entries append value {action:"database.datafixer",entries:[],initial_entries_length:0}
execute store result storage pandamium:queue entries[-1].initial_entries_length int 1 run data get storage pandamium.db:players entries
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db:players entries[]

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Started data migration for regions data]"}

# mark as done
scoreboard players set <completed_database_fix_24_12_2023> global 1
