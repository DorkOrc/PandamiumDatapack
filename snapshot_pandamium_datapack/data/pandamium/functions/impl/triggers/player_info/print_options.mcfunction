execute if score @s disable_tpa_requests matches 1 run tellraw @p[tag=player_info.source] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_tpa_requests matches 1 run tellraw @p[tag=player_info.source] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]

execute if score @s disable_keep_inventory matches 1 run tellraw @p[tag=player_info.source] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_keep_inventory matches 1 run tellraw @p[tag=player_info.source] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]

execute if score @s disable_insomnia matches 1 run tellraw @p[tag=player_info.source] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_insomnia matches 1 run tellraw @p[tag=player_info.source] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]
