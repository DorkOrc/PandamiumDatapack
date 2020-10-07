execute if score @p tpa_request matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," ",{"selector":"@p","color":"red"}," already has another TPA request."]
execute if score @p tpa_request matches 1.. run title @p actionbar [{"text":"","color":"green"},{"selector":"@s"}," wants to teleport to you."]

execute unless score @p tpa_request matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You sent ",{"selector":"@p"}," a ",{"text":"TPA request","color":"aqua"}," ",{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]
execute unless score @p tpa_request matches 1.. run tellraw @p [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@s"}," sent you a ",{"text":"TPA request","color":"aqua"}," ",{"text":"[✔]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Accept Request","color":"dark_green"}]}}," ",{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Deny Request","color":"red"}]}},""]
execute unless score @p tpa_request matches 1.. run playsound minecraft:entity.experience_orb.pickup player @p ~ ~ ~ 1 2 1

execute unless score @p tpa_request matches 1.. run scoreboard players set @p tpa_request_time 1200
execute unless score @p tpa_request matches 1.. run scoreboard players operation @p tpa_request = @s id
