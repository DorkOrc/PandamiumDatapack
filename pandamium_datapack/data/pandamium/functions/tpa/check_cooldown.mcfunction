scoreboard players set <player_exists> variable 0
execute as @a if score @p[tag=running_trigger] tpa = @s id run scoreboard players set <player_exists> variable 1
execute if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," Could not find that player."]

scoreboard players set <has_sent_request> variable 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run scoreboard players set <has_sent_request> variable 1
execute if score <has_sent_request> variable matches 1 as @a if score @p[tag=running_trigger] id = @s tpa_request run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You have already sent a TPA request to ",{"selector":"@s","color":"red"},"! ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]

execute if score <has_sent_request> variable matches 0 as @a if score @p[tag=running_trigger] tpa = @s id run function pandamium:tpa/send_request
