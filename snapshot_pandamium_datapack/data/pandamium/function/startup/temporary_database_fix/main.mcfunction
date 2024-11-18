# check done
execute if score <completed_database_fix_version> global matches 1005.. run return 0
scoreboard players set <completed_database_fix_version> global 1005

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer started]"}

# run
function pandamium:impl/queue/append/datafixer

return 1
