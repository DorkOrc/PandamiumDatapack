$bossbar set data_fixer_progress name {"text":"[dataFixer] queueing fix for index $(index)"}

$data modify storage pandamium:queue queue append value {action:"database/fix_data",index:$(index),wait:$(index)}

execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players add <index> variable 1
execute if score <index> variable < <length> variable run function pandamium:startup/temporary_database_fix/queue_loop with storage pandamium:templates macro.index
