# Enable tpa trigger
scoreboard players enable @a tpa
scoreboard players enable @a tpaAccept
scoreboard players add @a tpaRequest 0

# Check the cooldown
execute as @a[scores={tpa=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins = @s homeTimer
execute as @a[scores={tpa=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins /= <ticksPerMinute> variable
execute as @a[scores={tpa=1..,homeTimer=1..}] run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You need to wait another ","color":"green"},{"score":{"name":"@s","objective":"homeTimerMins"},"color":"aqua"},{"text":" minutes before you can use ","color":"green"},{"text":"/trigger tpa","color":"aqua"},{"text":" again! You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to remove it!","color":"green"}]
scoreboard players set @a[scores={tpa=1..,homeTimer=1..}] tpa 0

# Check if there is a cooldown
execute as @a[scores={tpa=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins = @s homeTimer
execute as @a[scores={tpa=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins /= <ticksPerMinute> variable
execute as @a[scores={tpa=1..,homeTimer=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You need to wait another ","color":"green"},{"score":{"name":"@s","objective":"homeTimerMins"},"color":"aqua"},{"text":" minutes before you can use ","color":"green"},{"text":"/trigger tpa","color":"aqua"},{"text":" again! You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to remove it!","color":"green"}]
scoreboard players set @a[scores={tpa=1..,homeTimer=1..}] tpa 0

# Menu
tellraw @a[scores={tpa=1}] [{"text":"-------------------------\n","color":"aqua"},{"text":"[TPA]","color":"dark_blue"},{"text":" TPA ","color":"aqua"},{"text":"|","color":"green"},{"text":" How to use","color":"aqua"},{"text":": Click [","color":"green"},{"text":"here","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger tpa set "}},{"text":"] and add the ","color":"green"},{"text":"ID","color":"aqua"},{"text":" of the player you want to send a request to!","color":"green"}]
tellraw @a[scores={tpa=1}] [{"text":"--- Player list: ---","color":"green"}]
execute as @a[team=!owner] run tellraw @a[scores={tpa=1}] [{"text":"Name: ","color":"green"},{"text":"[","color":"aqua"},{"selector":"@s"},{"text":"]","color":"aqua"},{"text":" --> ID: ","color":"green"},{"score":{"name":"@s","objective":"id"},"color":"aqua"}]
tellraw @a[scores={tpa=1}] [{"text":"-------------------------","color":"aqua"}]

# Check if the user already has a request
execute as @a[scores={tpa=2..}] at @a[scores={tpaRequest=1..}] if score @s tpa = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"can't","color":"aqua"},{"text":" send a tpa request to ","color":"green"},{"selector":"@p"},{"text":" because he/she already has ","color":"green"},{"text":"another tpa request","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={tpa=2..}] at @a[scores={tpaRequest=1..}] if score @s tpa = @p id run scoreboard players set @s tpa 0

# Check if the user is in the overworld
execute as @a[scores={tpa=2..}] at @a[nbt=!{Dimension:0}] if score @s tpa = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"can't","color":"aqua"},{"text":" send a tpa request to ","color":"green"},{"selector":"@p"},{"text":" because he/she is in the ","color":"green"},{"text":"nether/end","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={tpa=2..}] at @a[nbt=!{Dimension:0}] if score @s tpa = @p id run scoreboard players set @s tpa 0

# Send request
execute as @a[scores={tpa=2..}] at @a if score @s tpa = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" You received a ","color":"green"},{"text":"tpa request","color":"aqua"},{"text":" from ","color":"green"},{"selector":"@s"},{"text":"!\nYou can click to [","color":"green"},{"text":"accept","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpaAccept set 1"}},{"text":"] or [","color":"green"},{"text":"deny","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpaAccept set -1"}},{"text":"] the request!","color":"green"}]
execute as @a[scores={tpa=2..}] at @a if score @s tpa = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request was ","color":"green"},{"text":"successfully","color":"aqua"},{"text":" sent to ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
execute as @a[scores={tpa=2..}] at @a if score @s tpa = @p id run scoreboard players set @p tpaTimer 600
execute as @a[scores={tpa=2..}] at @a if score @s tpa = @p id run scoreboard players operation @p tpaRequest = @s id

# Accept request
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a if score @s tpaRequest = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"accepted","color":"aqua"},{"text":" the tpa request from ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a if score @s tpaRequest = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" was ","color":"green"},{"text":"accepted","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a[scores={gameplayPerms=0}] if score @s tpaRequest = @p id run scoreboard players set @p homeTimer 36000
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a[scores={gameplayPerms=1}] if score @s tpaRequest = @p id run scoreboard players set @p homeTimer 24000
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a[scores={gameplayPerms=2}] if score @s tpaRequest = @p id run scoreboard players set @p homeTimer 12000
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a[scores={gameplayPerms=3}] if score @s tpaRequest = @p id run scoreboard players set @p homeTimer 6000
execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a if score @s tpaRequest = @p id in minecraft:overworld run tp @p @s
scoreboard players set @a[scores={tpaRequest=1..,tpaAccept=1}] tpaRequest 0

# Deny request
execute as @a[scores={tpaRequest=1..,tpaAccept=-1}] at @a if score @s tpaRequest = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"denied","color":"aqua"},{"text":" the tpa request from ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
execute as @a[scores={tpaRequest=1..,tpaAccept=-1}] at @a if score @s tpaRequest = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" was ","color":"green"},{"text":"denied","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={tpaRequest=1..,tpaAccept=-1}] tpaRequest 0

# Request timer
scoreboard players remove @a[scores={tpaTimer=1..}] tpaTimer 1
execute as @a[scores={tpaRequest=1..,tpaTimer=0}] at @a if score @s tpaRequest = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request from ","color":"green"},{"selector":"@p"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={tpaRequest=1..,tpaTimer=0}] at @a if score @s tpaRequest = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={tpaRequest=1..,tpaTimer=0}] tpaRequest 0

# Reset triggers
scoreboard players set @a tpa 0
scoreboard players set @a tpaAccept 0