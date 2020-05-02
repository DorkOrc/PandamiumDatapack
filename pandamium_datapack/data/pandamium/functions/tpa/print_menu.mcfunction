tellraw @s [{"text":"--------- [TPA] ---------\n","color":"aqua"},{"text":"Player List:","color":"green"}]
execute at @a[team=!owner] run tellraw @s [{"text":"Name: ","color":"green"},{"text":"[","color":"aqua"},{"selector":"@p"},{"text":"]","color":"aqua"},{"text":" ==> ID: ","color":"green"},{"score":{"name":"@p","objective":"id"},"color":"aqua"}]
tellraw @s [{"text":"\nHow to use","color":"aqua"},{"text":": Click [","color":"green"},{"text":"here","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "}},{"text":"] and add the ","color":"green"},{"text":"ID","color":"aqua"},{"text":" of the player you want to send a request to!","color":"green"}]
tellraw @s [{"text":"-------------------------","color":"aqua"}]
