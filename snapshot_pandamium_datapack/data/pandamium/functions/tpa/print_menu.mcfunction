tag @s add print

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"TPA Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]
function pandamium:misc/print_grouped_id_list
tellraw @s [{"text":"\nHow to use","color":"aqua"},{"text":": Click ","color":"green"},{"text":"[Here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"tpa","color":"aqua"}," set ",{"text":"<ID>","color":"yellow","underlined":true}]}},{"text":" and type the ","color":"green"},{"text":"ID","color":"aqua","underlined":true},{"text":" of the player you want to send a request to!","color":"green"}]

execute if score @s tpa_request.sender_id matches 1.. run scoreboard players operation <sender_id> variable = @s tpa_request.sender_id
execute if score @s tpa_request.sender_id matches 1.. as @a if score @s id = <sender_id> variable run tellraw @a[tag=print,limit=1] [{"text":"\nIncoming Request from ","color":"aqua"},{"selector":"@s"},": ",[{"text":"[✔]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Accept","bold":true}," incoming TPA Request"]}}]," ",[{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Deny","bold":true}," incoming TPA Request"]}}]]
scoreboard players operation <sender_id> variable = @s id
execute as @a if score @s tpa_request.sender_id = <sender_id> variable run tellraw @a[tag=print,limit=1] [{"text":"\nOutgoing Request to ","color":"aqua"},{"selector":"@s"},": ",[{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]
tellraw @s {"text":"===========================","color":"aqua"}

tag @s remove print
