
execute if score @s tpa matches -2..-1 unless score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any TPA requests.","color":"red"}]
scoreboard players set @s temp_1 0
execute at @a if score @s tpa_request = @p id run scoreboard players set @s temp_1 1
execute if score @s tpa matches -2..-1 if score @s tpa_request matches 1.. if score @s temp_1 matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Couldn't find the sender of the TPA request.","color":"red"}]
scoreboard players set @s temp_1 0
execute at @a if score @s id = @p tpa_request run scoreboard players set @s temp_1 1
execute if score @s tpa matches -3 if score @s temp_1 matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" No players have TPA requests from you.","color":"red"}]

execute if score @s tpa matches -1 at @a if score @s tpa_request = @p id run function pandamium:tpa/accept_request
execute if score @s tpa matches -2 at @a if score @s tpa_request = @p id run function pandamium:tpa/deny_request
execute if score @s tpa matches -3 at @a if score @s id = @p tpa_request run function pandamium:tpa/cancel_request

scoreboard players reset @s tpa
scoreboard players enable @s tpa
