execute unless score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You don't have any tpa requests!","color":"green"}]

execute if score @s tpa_accept matches 1.. at @a if score @s tpa_request = @p id run function pandamium:tpa/accept_request
execute if score @s tpa_accept matches ..-1 at @a if score @s tpa_accept = @p id run function pandamium:tpa/deny_request

# If the other player is found then one of the above two functions is executed and tpa_request will be 0
execute if score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Couldn't find the sender of the tpa request!","color":"green"}]

scoreboard players reset @s tpa_accept
scoreboard players enable @s tpa_accept
