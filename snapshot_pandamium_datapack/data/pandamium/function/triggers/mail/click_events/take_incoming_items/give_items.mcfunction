playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 2

execute unless data storage pandamium.db.mail:io selected.entry.data.items[0] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[0].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[0]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[0] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1

execute unless data storage pandamium.db.mail:io selected.entry.data.items[1] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[1].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[1].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[1]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[1] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1

execute unless data storage pandamium.db.mail:io selected.entry.data.items[2] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[2].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[2].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[2]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[2] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1

execute unless data storage pandamium.db.mail:io selected.entry.data.items[3] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[3].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[3].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[3]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[3] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1

execute unless data storage pandamium.db.mail:io selected.entry.data.items[4] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[4].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[4].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[4]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[4] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1

execute unless data storage pandamium.db.mail:io selected.entry.data.items[5] run return 0
execute store result score <unavailable> variable run data get storage pandamium.db.mail:io selected.entry.data.items[5].taken
execute store result score <private> variable run data get storage pandamium.db.mail:io selected.entry.data.items[5].private.id
execute if score <private> variable matches 1.. unless score @s id = <private> variable run scoreboard players set <unavailable> variable 1
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium.db.mail:io selected.entry.data.items[5]
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/modify/get_item/give_to_self
execute unless score <unavailable> variable matches 1 run function pandamium:utils/database/stored_items/recycle
execute unless score <unavailable> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.items[5] merge value {taken:1b,__taken__:1b}
execute unless score <unavailable> variable matches 1 run scoreboard players remove @s mail_data.unclaimed_items 1
