# FROM pandamium:triggers/tpa
# AS [type=player,tag=running_trigger]

execute as @a if score @s id = @p[tag=running_trigger] tpa run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]

scoreboard players set <has_sent_request> variable 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run scoreboard players set <has_sent_request> variable 1

tag @s add sender
tag @p[tag=selected_player] add receiver
function pandamium:tpa/check_can_accept
tag @a remove receiver
tag @s remove sender

execute if score @s jailed matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot use that trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score <has_sent_request> variable matches 1 as @a if score @s tpa_request = @p[tag=running_trigger] id run tellraw @p[tag=running_trigger] [{"text":"[TPA]","color":"dark_red"},[{"text":" You have already sent a TPA request to ","color":"red"},{"selector":"@s","color":"red"},"! ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]
execute unless score @s jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"[TPA]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"tpa"}},"!"]]
execute unless score @s jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 1 if score <can_accept> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},[{"text":" You cannot teleport to ","color":"red"},{"selector":"@p[tag=selected_player]","color":"red"}," currently!"]]
execute unless score @s jailed matches 1.. if score <has_sent_request> variable matches 0 if score <player_exists> variable matches 1 if score <can_accept> variable matches 1 if score <has_sent_request> variable matches 0 as @p[tag=selected_player] run function pandamium:tpa/send_request
