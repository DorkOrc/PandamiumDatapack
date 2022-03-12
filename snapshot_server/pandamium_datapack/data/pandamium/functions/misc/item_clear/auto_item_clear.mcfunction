execute if score <auto_clear> global matches 1200 run title @a actionbar {"text":"Item clear in 60 seconds.","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 600 run title @a actionbar {"text":"Item clear in 30 seconds.","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 300 run title @a actionbar {"text":"Item clear in 15 seconds.","color":"dark_aqua","bold":true}

execute if score <auto_clear> global matches 100 run title @a actionbar {"text":"Clearing dropped items in 5...","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 80 run title @a actionbar {"text":"Clearing dropped items in 4...","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 60 run title @a actionbar {"text":"Clearing dropped items in 3...","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 40 run title @a actionbar {"text":"Clearing dropped items in 2...","color":"dark_aqua","bold":true}
execute if score <auto_clear> global matches 20 run title @a actionbar {"text":"Clearing dropped items in 1...","color":"dark_aqua","bold":true}

execute if score <auto_clear> global matches 0 run function pandamium:misc/item_clear/clear_excess_items
execute if score <auto_clear> global matches 0 run title @a actionbar {"text":"Dropped items were cleared.","color":"aqua","bold":true}

execute if score <auto_clear> global matches 0 run scoreboard players set <auto_clear> global 72000
