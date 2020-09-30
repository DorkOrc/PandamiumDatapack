execute if score @s tpa_cooldown matches 1.. run function pandamium:tpa/print_cooldown

scoreboard players set @s temp_1 0
execute at @a if score @s tpa = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," Could not find that player."]

scoreboard players set @s temp_1 0
execute at @a if score @p tpa_request = @s id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 1 at @a if score @s id = @p tpa_request run tellraw @s [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You have already sent a TPA request to ",{"selector":"@p","color":"red"}," ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]

execute if score @s temp_1 matches 0 unless score @s tpa_cooldown matches 1.. at @a if score @s tpa = @p id run function pandamium:tpa/send_request
