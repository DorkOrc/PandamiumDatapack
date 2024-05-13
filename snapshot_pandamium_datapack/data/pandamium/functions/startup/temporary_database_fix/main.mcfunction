# check done
execute if score <completed_database_fix_version> global matches 1001.. run return 0
scoreboard players set <completed_database_fix_version> global 1001

# run
function pandamium:startup/temporary_database_fix/migrate_a_db_to_its_own_file {type:"entities"}
function pandamium:startup/temporary_database_fix/migrate_a_db_to_its_own_file {type:"click_events"}
function pandamium:startup/temporary_database_fix/migrate_a_db_to_its_own_file {type:"mail"}
function pandamium:startup/temporary_database_fix/migrate_a_db_to_its_own_file {type:"regions"}
function pandamium:startup/temporary_database_fix/migrate_a_db_to_its_own_file {type:"stored_items"}

data modify storage pandamium:cache {} merge from storage pandamium:cache {}
data remove storage pandamium:cache online_players

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer started]"}

return 1
