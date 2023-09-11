execute if score <completed_database_fix_11_9_2023_c> global matches 1 run return 0

bossbar add pandamium:data_fixer_progress {"text":"[dataFixer]"}
bossbar set pandamium:data_fixer_progress value 0
bossbar set pandamium:data_fixer_progress players @a[scores={send_extra_debug_info=1}]
execute store result score <length> variable store result bossbar pandamium:data_fixer_progress max if data storage pandamium.db:players entries[]
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players set <index> variable 0
function pandamium:startup/temporary_database_fix/queue_loop with storage pandamium:templates macro.index
function pandamium:startup/temporary_database_fix/queue_end with storage pandamium:templates macro.index

scoreboard players set <completed_database_fix_11_9_2023_c> global 1

