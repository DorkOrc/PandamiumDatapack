# arguments: index

$bossbar set pandamium:data_fixer_progress value $(index)
$bossbar set pandamium:data_fixer_progress name {"text":"[dataFixer] fixing index $(index)"}
$execute if data storage pandamium.db:players entries[$(index)].data.homes run function pandamium:startup/temporary_database_fix/fix/upgrade_entry {index:$(index)}
