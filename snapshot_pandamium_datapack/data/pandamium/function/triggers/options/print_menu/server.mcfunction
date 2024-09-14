tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s staff_perms matches 1.. unless score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"Anti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's\nIPs get flagged as suspicious\nand have less than 5 minutes of\nplaytime.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -601"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s staff_perms matches 1.. if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"Anti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's\nIPs get flagged as suspicious\nand have less than 5 minutes of\nplaytime.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -601"}},{"text":"On","color":"yellow","bold":true}]
execute unless score @s staff_perms matches 1.. unless score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"Anti-Bot Mode: ","color":"#C9C9C9"},{"text":"Off","color":"#E9E9E9","bold":true}]
execute unless score @s staff_perms matches 1.. if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"Anti-Bot Mode: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]


execute if score @s staff_perms matches 1.. unless score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":"Carpet Mod: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Carpet Mod","bold":true},{"text":"\nAutomatically overrides the\n\"Auto Defuse TNT\" and \"Vanilla\nMob Griefing Rule\" server\noptions.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -604"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s staff_perms matches 1.. if score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":"Carpet Mod: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Carpet Mod","bold":true},{"text":"\nAutomatically overrides the\n\"Auto Defuse TNT\" and \"Vanilla\nMob Griefing Rule\" server\noptions.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -604"}},{"text":"On","color":"yellow","bold":true}]
execute unless score @s staff_perms matches 1.. unless score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":"Carpet Mod: ","color":"#C9C9C9"},{"text":"Off","color":"#E9E9E9","bold":true}]
execute unless score @s staff_perms matches 1.. if score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":"Carpet Mod: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]


execute if score <server_optn.carpet_mod_enabled> global matches 1 if score @s staff_perms matches 3.. unless score <disable_tnt_auto_defuse> global matches 1 run tellraw @s [{"text":"Auto Defuse TNT: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Auto Defuse TNT","bold":true},{"text":"\nAutomatically delete all tnt\nentities once every second.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -602"}},{"text":"On","color":"yellow","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 if score @s staff_perms matches 3.. if score <disable_tnt_auto_defuse> global matches 1 run tellraw @s [{"text":"Auto Defuse TNT: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Auto Defuse TNT","bold":true},{"text":"\nAutomatically delete all tnt\nentities once every second.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -602"}},{"text":"Off","color":"yellow","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 unless score @s staff_perms matches 3.. unless score <disable_tnt_auto_defuse> global matches 1 run tellraw @s [{"text":"Auto Defuse TNT: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 unless score @s staff_perms matches 3.. if score <disable_tnt_auto_defuse> global matches 1 run tellraw @s [{"text":"Auto Defuse TNT: ","color":"#C9C9C9"},{"text":"Off","color":"#E9E9E9","bold":true}]
execute unless score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":" Auto Defuse TNT: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]

execute store result score <gamerule_mob_griefing> variable run gamerule mobGriefing
execute if score <server_optn.carpet_mod_enabled> global matches 1 if score @s staff_perms matches 3.. unless score <gamerule_mob_griefing> variable matches 1 run tellraw @s [{"text":"Vanilla Mob Griefing Rule: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Vanilla Mob Griefing Rule","bold":true},{"text":"\nControls the mobGriefing\ngamerule. This is separate from\nCarpet config. You should only\ndisable this if Carpet is\ndisabled as it has the\nsideeffect of breaking villager\nfarms.","color":"gray"},{"text":"\n• On\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -603"}},{"text":"Off","color":"yellow","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 if score @s staff_perms matches 3.. if score <gamerule_mob_griefing> variable matches 1 run tellraw @s [{"text":"Vanilla Mob Griefing Rule: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Vanilla Mob Griefing Rule","bold":true},{"text":"\nControls the mobGriefing\ngamerule. This is separate from\nCarpet config. You should only\ndisable this if Carpet is\ndisabled as it has the\nsideeffect of breaking villager\nfarms.","color":"gray"},{"text":"\n• On\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -603"}},{"text":"On","color":"yellow","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 unless score @s staff_perms matches 3.. unless score <gamerule_mob_griefing> variable matches 1 run tellraw @s [{"text":"Vanilla Mob Griefing Rule: ","color":"#C9C9C9"},{"text":"Off","color":"#E9E9E9","bold":true}]
execute if score <server_optn.carpet_mod_enabled> global matches 1 unless score @s staff_perms matches 3.. if score <gamerule_mob_griefing> variable matches 1 run tellraw @s [{"text":"Vanilla Mob Griefing Rule: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]
execute unless score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{"text":" Vanilla Mob Griefing Rule: ","color":"#C9C9C9"},{"text":"Off","color":"#E9E9E9","bold":true}]

function pandamium:triggers/options/print_menu/footer
