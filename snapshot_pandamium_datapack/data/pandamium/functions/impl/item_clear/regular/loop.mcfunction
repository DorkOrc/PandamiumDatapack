scoreboard players remove <regular_item_clear_timer> global 1

execute if score <mob_count> variable matches 2000..2499 if score <regular_item_clear_timer> global matches 1801.. run scoreboard players set <regular_item_clear_timer> global 1800
execute if score <mob_count> variable matches 2500..2999 if score <regular_item_clear_timer> global matches 901.. run scoreboard players set <regular_item_clear_timer> global 900
execute if score <mob_count> variable matches 3000.. if score <regular_item_clear_timer> global matches 301.. run scoreboard players set <regular_item_clear_timer> global 300

# Timer
scoreboard players set <print_time> variable 1
execute unless score <regular_item_clear_timer> global matches 60 unless score <regular_item_clear_timer> global matches 30 unless score <regular_item_clear_timer> global matches 15 unless score <regular_item_clear_timer> global matches 2..5 run scoreboard players set <print_time> variable 0
execute if score <print_time> variable matches 1 run title @a actionbar [{"text":"Clearing dropped items in ","color":"dark_aqua","bold":true},{"score":{"name":"<regular_item_clear_timer>","objective":"global"}}," seconds"]
execute if score <regular_item_clear_timer> variable matches 1 run title @a actionbar [{"text":"Clearing dropped items in ","color":"dark_aqua","bold":true},{"score":{"name":"<regular_item_clear_timer>","objective":"global"}}," second"]

# Do Item Clear
execute if score <regular_item_clear_timer> global matches 0 run function pandamium:misc/item_clear/regular/main

execute unless score <regular_item_clear_timer> global matches 1.. run scoreboard players set <regular_item_clear_timer> global 3600
schedule function pandamium:misc/item_clear/regular/loop 1s
