scoreboard players set <at_least_elder> variable 0
execute if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run scoreboard players set <at_least_elder> variable 1

# Menu
execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1.. if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Phantom Spawning","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Phantom Spawning","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. if score @s hide_auto_msgs matches 1 run tellraw @s [{"text":"Auto Messages: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Auto Messages","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -129"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. unless score @s hide_auto_msgs matches 1 run tellraw @s [{"text":"Auto Messages: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"Toggle Auto Messages","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -129"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"Auto Messages: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available once you become an Elder or a Donator.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to vote and donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"True","color":"#E9E9E9","bold":true}]

scoreboard players set <can_toggle_donator_prefix> variable 0
execute unless entity @s[team=!donator,team=!elder+,team=!veteran+,team=!elite+] if score <at_least_elder> variable matches 1 run scoreboard players set <can_toggle_donator_prefix> variable 1
execute store success score <donator_team> variable if entity @s[team=donator]
execute if score @s options matches 1.. if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Toggle Donator Prefix","color":"dark_purple"}},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score <can_toggle_donator_prefix> variable matches 1 unless score <donator_team> variable matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Toggle Donator Prefix","color":"dark_purple"}},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score <can_toggle_donator_prefix> variable matches 0 if entity @s[team=!vip] unless score @s staff_perms matches 1.. run tellraw @s [{"text":"Donator Prefix: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available for Donators who are ranked Elder, Veteran or Elite.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to vote and donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"False","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 1.. unless score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s spectator_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Toggle Spectator Night Vision","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s spectator_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Toggle Spectator Night Vision","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

# Confirmation Messages
execute if score @s options matches -102 unless score @s disable_keep_inv matches 1 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" Are you sure you want to disable Keep-Inventory? Doing this will cause you to drop all your items onto the ground whenever you die. ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory for Yourself","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]
execute if score @s options matches -102 if score @s disable_keep_inv matches 1 run scoreboard players set @s options -2

# Toggle Options
execute if score @s options matches -1 store success score @s disable_tp_rqsts unless score @s disable_tp_rqsts matches 1
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -2 store success score @s disable_keep_inv unless score @s disable_keep_inv matches 1
execute if score @s options matches -2 if score @s disable_keep_inv matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -3 store success score @s disable_insomnia unless score @s disable_insomnia matches 1
execute if score @s options matches -3 if score @s disable_insomnia matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -3 if score @s disable_insomnia matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 run function pandamium:misc/toggle_donator_team
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Donator Prefix","bold":true,"color":"dark_purple"},"!"]
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Donator Prefix","bold":true,"color":"dark_purple"},"!"]

execute if score @s options matches -129 store success score @s hide_auto_msgs unless score @s hide_auto_msgs matches 1
execute if score @s options matches -129 if score @s hide_auto_msgs matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Auto Messages","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -129 if score @s hide_auto_msgs matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Auto Messages","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -64 if score @s staff_perms matches 1.. store success score @s hide_punishments unless score @s hide_punishments matches 1
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Disabled ","color":"aqua"},{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Enabled ","color":"aqua"},{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]

execute if score @s options matches -65 if score @s staff_perms matches 2.. store success score @s spectator_vision unless score @s spectator_vision matches 1
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 0 run effect clear @s[gamemode=spectator] night_vision
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Spectator Night Vision","bold":true,"color":"gold"},"!"]
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Spectator Night Vision","bold":true,"color":"gold"},"!"]

# Error Messages
scoreboard players set <has_toggled_donator_prefix> variable 0
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 run scoreboard players set <has_toggled_donator_prefix> variable 1
execute if score @s options matches ..-4 unless score @s option matches -102 unless score <has_toggled_donator_prefix> variable matches 1 unless entity @s[scores={options=-129,gameplay_perms=3..}] unless entity @s[scores={options=-128,gameplay_perms=6..}] unless entity @s[scores={options=-64,staff_perms=1..}] unless entity @s[scores={options=-65,staff_perms=2..}] run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" This is not a valid option!","color":"red"}]

scoreboard players reset @s options
scoreboard players enable @s options
