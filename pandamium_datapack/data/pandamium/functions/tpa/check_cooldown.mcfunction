scoreboard players set <player_exists> variable 0
execute as @a if score @p[tag=running_trigger] tpa = @s id run scoreboard players set <player_exists> variable 1

scoreboard players set <has_sent_request> variable 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run scoreboard players set <has_sent_request> variable 1

tag @p[tag=running_trigger] add sender
execute as @a if score @p[tag=running_trigger] tpa = @s id run tag @s add receiver
function pandamium:tpa/check_can_accept
tag @a remove sender
tag @a remove receiver

execute if score @p[tag=running_trigger] jailed matches 1.. run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You cannot use this trigger in jail!"]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> variable matches 1 as @a if score @p[tag=running_trigger] id = @s tpa_request run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You have already sent a TPA request to ",{"selector":"@s","color":"red"},"! ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," Could not find that player."]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 1 if score <can_accept> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You cannot teleport to this player currently!"]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 1 if score <can_accept> variable matches 1 if score <has_sent_request> variable matches 0 as @a if score @p[tag=running_trigger] tpa = @s id run function pandamium:tpa/send_request
