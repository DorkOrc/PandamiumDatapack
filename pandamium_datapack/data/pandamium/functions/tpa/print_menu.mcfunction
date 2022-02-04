tellraw @p[tag=running_trigger] [{"text":"======== ","color":"aqua"},{"text":"TPA Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

execute as @a[team=guest] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=player] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=member] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=elder] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=veteran] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=elite] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=helper] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=mod] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=srmod] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=admin] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=donator] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=vip] run tellraw @p[tag=running_trigger] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]

tellraw @p[tag=running_trigger] [{"text":"\nHow to use","color":"aqua"},{"text":": Click ","color":"green"},{"text":"[Here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "}},{"text":" and type the ","color":"green"},{"text":"ID","color":"aqua"},{"text":" of the player you want to send a request to!\n","color":"green"}]

execute as @a if score @s id = @p[tag=running_trigger] tpa_request run tellraw @p[tag=running_trigger] [{"text":"","color":"aqua"},{"selector":"@s"}," sent you a request: ",[{"text":"[✔]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Accept","bold":true}," incoming TPA Request"]}}]," ",[{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Deny","bold":true}," incoming TPA Request"]}}]]
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run tellraw @p[tag=running_trigger] [{"text":"Sent a request to ","color":"aqua"},{"selector":"@p"},": ",[{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]

tellraw @p[tag=running_trigger] {"text":"===========================","color":"aqua"}
