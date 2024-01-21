# check done
execute if score <completed_database_fix_21_01_2024> global matches 1 run return 0

# do fix
data modify storage pandamium.db.players:data {} merge from storage pandamium.db:players {}
data remove storage pandamium.db.players:data selected
data modify storage pandamium.db.players:io selected set from storage pandamium.db:players selected

data remove storage pandamium.db:players entries
data remove storage pandamium.db:players id_indexes
data remove storage pandamium.db:players uuid_indexes
data remove storage pandamium.db:players username_indexes
data remove storage pandamium.db:players selected

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[pandamium.db: Migrated players data]"}

# mark as done
scoreboard players set <completed_database_fix_21_01_2024> global 1
