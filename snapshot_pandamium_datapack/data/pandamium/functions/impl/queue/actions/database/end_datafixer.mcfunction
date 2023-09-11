#{
#	action: "database/end_datafixer"
#}

bossbar set pandamium:data_fixer_progress players
tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: dataFixer complete]","color":"gray","italic":true}
