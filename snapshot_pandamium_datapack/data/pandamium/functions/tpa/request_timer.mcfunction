execute if score @s tpa_request_time matches 0.. run scoreboard players remove @s tpa_request_time 5

tag @s add running_function
execute unless score @s tpa_request_time matches 0.. as @a if score @s id = @p[tag=running_function] tpa_request run tellraw @s [{"text":"","color":"gray"},{"text":"[TPA]","color":"dark_gray"}," Your TPA request to ",{"selector":"@p[tag=running_function]","color":"gray"},{"text":" expired","bold":true},"!"]
execute unless score @s tpa_request_time matches 0.. as @a if score @s id = @p[tag=running_function] tpa_request run tellraw @p[tag=running_function] [{"text":"","color":"gray"},{"text":"[TPA] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s TPA request ",{"text":"expired","bold":true},"!"]
tag @s remove running_function

execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request
execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request_time
