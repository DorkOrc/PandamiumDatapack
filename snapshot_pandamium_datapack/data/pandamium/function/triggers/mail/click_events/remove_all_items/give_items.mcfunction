execute unless data storage pandamium.db.mail:io selected.entry.data.items[0] run return 0
execute store result score <taken> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[0]
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/recycle

execute unless data storage pandamium.db.mail:io selected.entry.data.items[1] run return 0
execute store result score <taken> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[1]
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/recycle

execute unless data storage pandamium.db.mail:io selected.entry.data.items[2] run return 0
execute store result score <taken> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[2]
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/recycle

execute unless data storage pandamium.db.mail:io selected.entry.data.items[3] run return 0
execute store result score <taken> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[3]
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/recycle

execute unless data storage pandamium.db.mail:io selected.entry.data.items[4] run return 0
execute store result score <taken> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[4]
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <taken> variable matches 1 run function pandamium:utils/database/stored_items/recycle
