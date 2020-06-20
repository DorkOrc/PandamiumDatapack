execute if score <auto_clear> variable matches 1200 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Item clear in 60 seconds.","color":"gold","bold":"true"}]
execute if score <auto_clear> variable matches 1200 run title @a actionbar [{"text":"Item clear in 60 seconds.","color":"aqua","bold":"true"}]

execute if score <auto_clear> variable matches 600 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Item clear in 30 seconds.","color":"gold","bold":"true"}]
execute if score <auto_clear> variable matches 300 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Item clear in 15 seconds.","color":"gold","bold":"true"}]

execute if score <auto_clear> variable matches 100 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Clearing dropped items in 5...","color":"gold","bold":"true"}]
execute if score <auto_clear> variable matches 60 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Clearing dropped items in 3...","color":"gold","bold":"true"}]
execute if score <auto_clear> variable matches 40 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Clearing dropped items in 2...","color":"gold","bold":"true"}]
execute if score <auto_clear> variable matches 20 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Clearing dropped items in 1...","color":"gold","bold":"true"}]

execute if score <auto_clear> variable matches 0 run function pandamium:misc/clear_excess_items
execute if score <auto_clear> variable matches 0 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Dropped items were cleared.","color":"#db5400","bold":"true"}]

execute if score <auto_clear> variable matches 0 run scoreboard players set <auto_clear> variable 72000
