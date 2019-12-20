# EVENT: user does /trigger tpaaccept
# RESPONSE:
# 1. if the user has a request waiting (scoreboard = #):
# 2. /tp @p @s
# 3. reset tpa cooldown after tpa

execute as @a at @a if score @s tpa_accept matches 1 run function pandamium:tpa/accept_request
execute as @a at @a if score @s tpa_accept matches 2 run function pandamium:tpa/deny_request

scoreboard players reset @s tpa_accept
scoreboard players enable @s tpa_accept