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
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[pandamium.db: Migrated [players] database to new file]"}
