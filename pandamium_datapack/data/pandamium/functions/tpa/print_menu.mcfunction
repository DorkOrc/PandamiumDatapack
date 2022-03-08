tellraw @p[tag=running_trigger] [{"text":"======== ","color":"aqua"},{"text":"TPA Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

function pandamium:misc/print_grouped_id_list

tellraw @p[tag=running_trigger] [{"text":"\nHow to use","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"tpa","color":"aqua"}]}},{"text":": Click ","color":"green"},{"text":"[Here]","color":"aqua"},{"text":" and type the ","color":"green"},{"text":"ID","color":"aqua","underlined":true},{"text":" of the player you want to send a request to!","color":"green"}]

execute as @a if score @s id = @p[tag=running_trigger] tpa_request run tellraw @p[tag=running_trigger] [{"text":"\n","color":"aqua"},{"selector":"@s"}," sent you a request: ",[{"text":"[✔]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Accept","bold":true}," incoming TPA Request"]}}]," ",[{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Deny","bold":true}," incoming TPA Request"]}}]]
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run tellraw @p[tag=running_trigger] [{"text":"\nSent a request to ","color":"aqua"},{"selector":"@p"},": ",[{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]

tellraw @p[tag=running_trigger] {"text":"===========================","color":"aqua"}
