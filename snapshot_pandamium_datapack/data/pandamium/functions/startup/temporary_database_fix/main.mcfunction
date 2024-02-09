# check done
execute if score <completed_database_fix_31_01_2024> global matches 1 run return 0

# queue
data modify storage pandamium:queue entries append value {action:"database.datafixer",index:0,max_index:-1}
execute store result score <index> variable if data storage pandamium.db:mail entries[]
execute store result storage pandamium:queue entries[-1].max_index int 1 run scoreboard players remove <index> variable 1

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: queue/database.datafixer: Started data fixer]"}

# mark as done
scoreboard players set <completed_database_fix_31_01_2024> global 1
