execute if score <auto_clear> variable matches 1200 run title @a actionbar {"text":"Item clear in 60 seconds.","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 600 run title @a actionbar {"text":"Item clear in 30 seconds.","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 300 run title @a actionbar {"text":"Item clear in 15 seconds.","color":"aqua","bold":"true"}

execute if score <auto_clear> variable matches 100 run title @a actionbar {"text":"Clearing dropped items in 5...","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 80 run title @a actionbar {"text":"Clearing dropped items in 4...","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 60 run title @a actionbar {"text":"Clearing dropped items in 3...","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 40 run title @a actionbar {"text":"Clearing dropped items in 2...","color":"aqua","bold":"true"}
execute if score <auto_clear> variable matches 20 run title @a actionbar {"text":"Clearing dropped items in 1...","color":"aqua","bold":"true"}

execute if score <auto_clear> variable matches 0 run function pandamium:misc/clear_excess_items
execute if score <auto_clear> variable matches 0 run title @a actionbar {"text":"Dropped items were cleared.","color":"aqua","bold":"true"}

execute if score <auto_clear> variable matches 0 run scoreboard players set <auto_clear> variable 72000
