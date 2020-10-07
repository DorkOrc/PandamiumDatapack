
tellraw @s [{"text":"======== ","color":"aqua"},{"text":"TPA Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

execute at @a[team=guest] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=player] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=member] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=elder] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=elder+] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=veteran] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=veteran+] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=helper] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=helper+] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=mod] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=srmod] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]

execute at @a[team=donator] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]
execute at @a[team=vip] run tellraw @s [{"text":" ","color":"aqua"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"green","bold":true}]

tellraw @s ""
tellraw @s [{"text":"How to use","color":"aqua"},{"text":": Click ","color":"green"},{"text":"[Here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "}},{"text":" and type the ","color":"green"},{"text":"ID","color":"aqua"},{"text":" of the player you want to send a request to!","color":"green"}]

tellraw @s ""

execute at @a if score @s tpa_request = @p id run tellraw @s [{"text":"","color":"aqua"},{"selector":"@p"}," sent you a request: ",[{"text":"[✔]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Accept Request","color":"dark_green"}]}}]," ",[{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Deny Request","color":"red"}]}}]]
execute at @a if score @s id = @p tpa_request run tellraw @s [{"text":"You sent a request to ","color":"aqua"},{"selector":"@p"},": ",[{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]]

tellraw @s [{"text":"===========================","color":"aqua"}]
