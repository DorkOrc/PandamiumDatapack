execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1.. if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}}]
execute if score @s options matches 1.. unless score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}}]

execute if score @s options matches 1.. if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}}]
execute if score @s options matches 1.. unless score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}}]

execute if score @s options matches 1.. if score @s disable_insomnia matches 1 run tellraw @s [{"text":"Insomnia: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Insomnia","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}}]
execute if score @s options matches 1.. unless score @s disable_insomnia matches 1 run tellraw @s [{"text":"Insomnia: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Insomnia","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}}]

execute if score @s options matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}}]
execute if score @s options matches 1.. unless score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

#

execute if score @s options matches -102 if score @s disable_keep_inv matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Options]","color":"dark_red"}," Are you sure you want to disable Keep-Inventory? Doing this will cause you to drop all your items onto the ground whenever you die. ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Disable Keep-Inventory for Yourself","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]
execute if score @s options matches -102 if score @s disable_keep_inv matches 1 run scoreboard players set @s options -2

#
execute if score @s options matches -1 run scoreboard players add @s disable_tp_rqsts 1
execute if score @s disable_tp_rqsts matches 2.. run scoreboard players set @s disable_tp_rqsts 0
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -2 run scoreboard players add @s disable_keep_inv 1
execute if score @s disable_keep_inv matches 2.. run scoreboard players set @s disable_keep_inv 0
execute if score @s options matches -2 if score @s disable_keep_inv matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -3 run scoreboard players add @s disable_insomnia 1
execute if score @s disable_insomnia matches 2.. run scoreboard players set @s disable_insomnia 0
execute if score @s options matches -3 if score @s disable_insomnia matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Insomnia","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -3 if score @s disable_insomnia matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Insomnia","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -64 if score @s staff_perms matches 1.. run scoreboard players add @s hide_punishments 1
execute if score @s hide_punishments matches 2.. run scoreboard players set @s hide_punishments 0
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]

execute if score @s options matches ..-4 unless score @s option matches -102 unless entity @s[scores={options=-64,staff_perms=1..}] run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" This is not a valid option!","color":"red"}]

#disable_tp_rqsts
#disable_keep_inv
#disable_insomnia
#hide_punishments

scoreboard players reset @s options
scoreboard players enable @s options
