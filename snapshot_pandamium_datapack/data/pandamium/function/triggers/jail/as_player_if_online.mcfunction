execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic
gamemode adventure
function pandamium:misc/warp/jail
function pandamium:player/update_tablist_value

scoreboard players set <total_items_taken> variable 0
function pandamium:player/take_items/inventory
scoreboard players operation <total_items_taken> variable += <item_count> variable
function pandamium:player/take_items/enderchest
scoreboard players operation <total_items_taken> variable += <item_count> variable
