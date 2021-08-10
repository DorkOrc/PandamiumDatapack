scoreboard players set <player_exists> temp 0
execute as @a if score @s id = @p[tag=running_trigger] tpa run scoreboard players set <player_exists> temp 1

scoreboard players set <has_sent_request> temp 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run scoreboard players set <has_sent_request> temp 1

tag @p[tag=running_trigger] add sender
execute as @a if score @s id = @p[tag=running_trigger] tpa run tag @s add receiver
function pandamium:tpa/check_can_accept
tag @a remove sender
tag @a remove receiver

execute if score @p[tag=running_trigger] jailed matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> temp matches 1 as @a if score @s tpa_request = @p[tag=running_trigger] id run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You have already sent a TPA request to ",{"selector":"@s","color":"red"},"! ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> temp matches 0 if score <player_exists> temp matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," Could not find that player!"]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> temp matches 0 if score <player_exists> temp matches 1 if score <can_accept> temp matches 0 run tellraw @p[tag=running_trigger] [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot teleport to this player currently!","color":"red"}]
execute unless score @p[tag=running_trigger] jailed matches 1.. if score <has_sent_request> temp matches 0 if score <player_exists> temp matches 1 if score <can_accept> temp matches 1 if score <has_sent_request> temp matches 0 as @a if score @s id = @p[tag=running_trigger] tpa run function pandamium:tpa/send_request
