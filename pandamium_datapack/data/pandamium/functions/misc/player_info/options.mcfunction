execute if score @s disable_tp_rqsts matches 1 run tellraw @p[tag=running_trigger] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_tp_rqsts matches 1 run tellraw @p[tag=running_trigger] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]

execute if score @s disable_keep_inv matches 1 run tellraw @p[tag=running_trigger] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_keep_inv matches 1 run tellraw @p[tag=running_trigger] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]

execute if score @s disable_insomnia matches 1 run tellraw @p[tag=running_trigger] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s disable_insomnia matches 1 run tellraw @p[tag=running_trigger] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"True","color":"yellow","bold":true}]

execute if score @s hide_auto_msgs matches 1 run tellraw @p[tag=running_trigger] [{"text":"Auto Messages: ","color":"dark_aqua"},{"text":"False","color":"yellow","bold":true}]
execute unless score @s hide_auto_msgs matches 1 run tellraw @p[tag=running_trigger] [{"text":"Auto Messages: ","color":"dark_aqua"},{"text":"True","color":"yellow","bold":true}]

execute store success score <donator_team> variable if entity @s[team=donator]
execute if score <donator_team> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"Donator Prefix: ","color":"dark_purple"},{"text":"True","color":"yellow","bold":true}]
execute unless score <donator_team> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"Donator Prefix: ","color":"dark_purple"},{"text":"False","color":"yellow","bold":true}]
