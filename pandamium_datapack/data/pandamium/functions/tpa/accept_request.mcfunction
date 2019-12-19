# Accept request
# 1: say to receiver they accepted the request
# 2: say to sender their request was accepted

# 3: do tp

execute at @s if score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"accepted","color":"aqua"},{"text":" the tpa request from ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
execute as @a at @a if score @s tpa_request = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" was ","color":"green"},{"text":"accepted","color":"aqua"},{"text":"!","color":"green"}]

execute as @a at @a if score @s tpa_request = @p id unless score @p gameplay_perms matches 3 run scoreboard players set @p tpa_cooldown 6000

execute as @a[scores={tpa_request=1..,tpa_accept=1}] at @a if score @s tpa_request = @p id run tp @p @s

# execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a[scores={gameplayPerms=3}] if score @s tpaRequest = @p id run scoreboard players set @p homeTimer 6000

# execute as @a[scores={tpaRequest=1..,tpaAccept=1}] at @a if score @s tpaRequest = @p id in minecraft:overworld run tp @p @s

scoreboard players set @s tpa_request 0