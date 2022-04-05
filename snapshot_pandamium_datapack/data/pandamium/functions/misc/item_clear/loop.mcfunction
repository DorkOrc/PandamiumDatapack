scoreboard players remove <item_clear_timer> global 5

execute if score <mob_count> variable matches 3250..3499 if score <item_clear_timer> global matches 36001.. run scoreboard players set <item_clear_timer> global 36000
execute if score <mob_count> variable matches 3500..3999 if score <item_clear_timer> global matches 18001.. run scoreboard players set <item_clear_timer> global 18000
execute if score <mob_count> variable matches 4000.. if score <item_clear_timer> global matches 6001.. run scoreboard players set <item_clear_timer> global 6000

# Timer
execute if score <item_clear_timer> global matches 1200 run title @a actionbar {"text":"Item clear in 60 seconds.","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 600 run title @a actionbar {"text":"Item clear in 30 seconds.","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 300 run title @a actionbar {"text":"Item clear in 15 seconds.","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 100 run title @a actionbar {"text":"Clearing dropped items in 5...","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 80 run title @a actionbar {"text":"Clearing dropped items in 4...","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 60 run title @a actionbar {"text":"Clearing dropped items in 3...","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 40 run title @a actionbar {"text":"Clearing dropped items in 2...","color":"dark_aqua","bold":true}
execute if score <item_clear_timer> global matches 20 run title @a actionbar {"text":"Clearing dropped items in 1...","color":"dark_aqua","bold":true}

# Do Item Clear
execute if score <item_clear_timer> global matches 0 run function pandamium:misc/item_clear/clear_excess_items/main
execute if score <item_clear_timer> global matches 0 run title @a actionbar {"text":"Dropped items were cleared.","color":"aqua","bold":true}

execute unless score <item_clear_timer> global matches 1.. run scoreboard players set <item_clear_timer> global 72000
