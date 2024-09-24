tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Custom Dyes","bold":true}," ========"]

tellraw @s {"text":"Options:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},{"text":"[Rainbow]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick custom dye ","color":"aqua"},{"text":"Rainbow","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -101"}},"  |  ",{"text":"[Health]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick custom dye ","color":"aqua"},{"text":"Health","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -102"}}]

tellraw @s [{"text":"\nToggle: ","color":"green"},{"text":"[Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle your custom dye ","color":"red"},{"text":"Off","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -1"}},"  |  ",{"text":"[On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle your custom dye ","color":"green"},{"text":"On","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -2"}}]

tellraw @s {"text":"========================","color":"aqua"}
