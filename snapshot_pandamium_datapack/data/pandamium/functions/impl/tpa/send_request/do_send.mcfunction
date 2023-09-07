scoreboard players set @s tpa_request.time 1200
scoreboard players operation @s tpa_request.sender_id = @a[tag=sender,limit=1] id

tellraw @a[tag=sender,limit=1] [{"text":"","color":"green"},{"text":"[TPA]","color":"dark_green"}," Sent ",{"selector":"@s"}," a ",{"text":"TPA request","color":"aqua"},"! ",{"text":"[❌]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]
tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"selector":"@a[tag=sender,limit=1]"}," sent you a ",{"text":"TPA request","color":"aqua"},"! ",{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger tpa set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Accept","bold":true}," incoming TPA Request"]}}," ",{"text":"[❌]","color":"red","clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Deny","bold":true}," incoming TPA Request"]}},""]
scoreboard players set <returned> variable 1

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
