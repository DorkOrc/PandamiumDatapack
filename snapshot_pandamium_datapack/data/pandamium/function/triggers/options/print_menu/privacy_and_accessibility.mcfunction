tellraw @s {"text":"Privacy","color":"aqua","bold":true,"extra":[{"text":":","bold":false}]}

execute unless score @s id matches 2.. run tellraw @s [{"text":" Receive TPA Requests: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"Your ID is too low to be\ntargetted by triggers.","color":"red"}]}},{"text":"Impossible","color":"#E9E9E9","bold":true}]
execute if score @s id matches 2.. unless score @s disable_tpa_requests matches 1.. run tellraw @s [{"text":" Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"All","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s disable_tpa_requests matches 1 run tellraw @s [{"text":" Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"None","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s disable_tpa_requests matches 2 run tellraw @s [{"text":" Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"All Except Guests","color":"yellow","bold":true}]

execute unless score @s id matches 2.. run tellraw @s [{"text":" Receive Mail: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"Your ID is too low to be\ntargetted by triggers.","color":"red"}]}},{"text":"Impossible","color":"#E9E9E9","bold":true}]
execute if score @s id matches 2.. unless score @s optn.disable_receiving_mail matches 1.. run tellraw @s [{"text":" Receive Mail: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive Mail","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -16"}},{"text":"All","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s optn.disable_receiving_mail matches 1 run tellraw @s [{"text":" Receive Mail: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive Mail","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -16"}},{"text":"None","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s optn.disable_receiving_mail matches 2 run tellraw @s [{"text":" Receive Mail: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive Mail","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -16"}},{"text":"All Except Guests","color":"yellow","bold":true}]

tellraw @s ""

execute unless score @s hide_voting_announcements matches 1 run tellraw @s [{"text":" Announce Votes: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Announce Votes","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -9"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s hide_voting_announcements matches 1 run tellraw @s [{"text":" Announce Votes: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Announce Votes","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -9"}},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s hide_trophy_suffix matches 1 run tellraw @s [{"text":" Show Leader Board Trophy: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Leader Board Trophy","bold":true},{"text":"\nIf On, a golden trophy will\nappear next to your name if you\nare at the top of either monthly\nleaderboard.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -12"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s hide_trophy_suffix matches 1 run tellraw @s [{"text":" Show Leader Board Trophy: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Leader Board Trophy","bold":true},{"text":"\nIf On, a golden trophy will\nappear next to your name if you\nare at the top of either monthly\nleaderboard.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -12"}},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s hide_coordinates matches 1 run tellraw @s [{"text":" Hide Coordinates: ","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"blue"},{"text":"Hide Coordinates","bold":true},{"text":"\nRecommended for those recording\nor streaming their gameplay.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1002"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s hide_coordinates matches 1 run tellraw @s [{"text":" Hide Coordinates: ","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"blue"},{"text":"Hide Coordinates","bold":true},{"text":"\nRecommended for those recording\nor streaming their gameplay.","color":"gray"},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1002"}},{"text":"On","color":"yellow","bold":true}]

execute if score @s supporter_rank matches 1 unless score @s disable_donator_prefix matches 1 run tellraw @s [{"text":" Supporter Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_purple"},{"text":"Supporter Prefix","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s supporter_rank matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":" Supporter Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_purple"},{"text":"Supporter Prefix","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"Off","color":"yellow","bold":true}]
execute unless score @s supporter_rank matches 1 unless entity @s[team=vip] unless score @s staff_perms matches 1.. run tellraw @s [{"text":" Supporter Prefix: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available to Patreon supporters.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to support us!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Off","color":"#E9E9E9","bold":true}]

tellraw @s {"text":"\nAccessibility","color":"aqua","bold":true,"extra":[{"text":":","bold":false}]}

execute unless score @s optn.disable_dynamic_triggers.tpa_names matches 1 run tellraw @s [{"text":" Dynamic TPA Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic TPA Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"tpa.USERNAME","color":"aqua"},"\nto teleport to other players.\n\nIf Off, you can only use\n  /trigger ",{"text":"tpa","color":"aqua"}," set ",{"text":"<player id>","color":"yellow"},"."],{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -13"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s optn.disable_dynamic_triggers.tpa_names matches 1 run tellraw @s [{"text":" Dynamic TPA Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic TPA Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"tpa.USERNAME","color":"aqua"},"\nto teleport to other players.\n\nIf Off, you can only use\n  /trigger ",{"text":"tpa","color":"aqua"}," set ",{"text":"<player id>","color":"yellow"},"."],{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -13"}},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s optn.disable_dynamic_triggers.home_names matches 1 run tellraw @s [{"text":" Dynamic Home Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic Home Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"home.My_Named_Home","color":"aqua"},"\nto teleport to your homes.\n\nIf Off, you can only use\n  /trigger ",{"text":"home","color":"aqua"}," set ",{"text":"<home slot>","color":"yellow"},"."],{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -14"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s optn.disable_dynamic_triggers.home_names matches 1 run tellraw @s [{"text":" Dynamic Home Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic Home Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"home.My_Named_Home","color":"aqua"},"\nto teleport to your homes.\n\nIf Off, you can only use\n  /trigger ",{"text":"home","color":"aqua"}," set ",{"text":"<home slot>","color":"yellow"},"."],{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -14"}},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s optn.enable_dynamic_triggers.mail_names matches 1 run tellraw @s [{"text":" Dynamic Mail Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic Mail Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"mail.USERNAME","color":"aqua"},"\nto teleport to your homes.\n\nIf Off, you can only use\n  /trigger ",{"text":"mail","color":"aqua"}," set ",{"text":"<home slot>","color":"yellow"},"."],{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -17"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s optn.enable_dynamic_triggers.mail_names matches 1 run tellraw @s [{"text":" Dynamic Mail Triggers: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Dynamic Mail Triggers","bold":true},[{"text":"\nIf On, you will be able to use\nshortcut triggers such as\n  /trigger ","color":"gray"},{"text":"mail.USERNAME","color":"aqua"},"\nto teleport to your homes.\n\nIf Off, you can only use\n  /trigger ",{"text":"mail","color":"aqua"}," set ",{"text":"<home slot>","color":"yellow"},"."],{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -17"}},{"text":"On","color":"yellow","bold":true}]

execute unless score @s optn.enable_mini_block_help_trigger matches 1 run tellraw @s [{"text":" Advancements Progress Trigger: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Advancement Progress Trigger","bold":true},[{"text":"\nIf On, you will be able to use\n  /trigger ","color":"gray"},{"text":"help.advancements","color":"aqua"},"\nto get a progress report for the\n\"Minicraft: Pandamium Edition\"\nand \"Taxidermist\" advancements."],{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -18"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s optn.enable_mini_block_help_trigger matches 1 run tellraw @s [{"text":" Advancements Progress Trigger: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Advancements Progress Trigger","bold":true},[{"text":"\nIf On, you will be able to use\n  /trigger ","color":"gray"},{"text":"help.advancements","color":"aqua"},"\nto get a progress report for the\n\"Minicraft: Pandamium Edition\"\nand \"Taxidermist\" advancements."],{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -18"}},{"text":"On","color":"yellow","bold":true}]
