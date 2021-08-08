execute if score @s tpa_request matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[TPA] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" already has another TPA request!","color":"red"}]
execute if score @s tpa_request matches 1.. run title @s actionbar [{"text":"","color":"green"},{"selector":"@p[tag=running_trigger]"}," wants to teleport to you!"]

execute unless score @s tpa_request matches 1.. run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You sent ",{"selector":"@s"}," a ",{"text":"TPA request","color":"aqua"},"! ",{"text":"[X]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel Request","color":"gray"}]}}]
execute unless score @s tpa_request matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"selector":"@p[tag=running_trigger]"}," sent you a ",{"text":"TPA request","color":"aqua"},"! ",{"text":"[✔]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Accept Request","color":"dark_green"}]}}," ",{"text":"[X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Deny Request","color":"red"}]}},""]
execute unless score @s tpa_request matches 1.. at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

execute unless score @s tpa_request matches 1.. run scoreboard players set @s tpa_request_time 1200
execute unless score @s tpa_request matches 1.. run scoreboard players operation @s tpa_request = @p[tag=running_trigger] id
