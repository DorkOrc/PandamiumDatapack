# check done
execute if score <completed_database_fix_11_04_2024> global matches 1 run return 0

# queue
data modify storage pandamium:queue entries append value {action:"database.datafixer",meta:{index:0,max:1,do_bossbar:1b},names:[],wait:200}

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer started]"}

# mark as done
scoreboard players set <completed_database_fix_11_04_2024> global 1
