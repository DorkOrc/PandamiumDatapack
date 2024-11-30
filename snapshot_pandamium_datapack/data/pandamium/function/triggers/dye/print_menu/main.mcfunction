tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Custom Dyes","bold":true}," ========"]

tellraw @s {"text":"Options:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},\
            {"text":"[Rainbow]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick custom dye ","color":"aqua"},{"text":"Rainbow","bold":true},{"text":"\nThe colour will smoothly cycle through random colours.","color":"gray"},{"text":"\n\n⚠ Warning: This will constantly trigger nearby sculk sensors.","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -101"}},\
    "  |  ",{"text":"[Health]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick custom dye ","color":"aqua"},{"text":"Health","bold":true},{"text":"\nThe colour will reflect your health bar - red for low health, green for full health.","color":"gray"},{"text":"\n\n⚠ Warning: This will constantly trigger nearby sculk sensors while you have a health-affecting status effect.","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -102"}},\
    "  |  ",{"text":"[Biome]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to pick custom dye ","color":"aqua"},{"text":"Biome","bold":true},{"text":"\nThe colour will smoothly transition to blend in with the biome you are currently in.","color":"gray"},{"text":"\n\n⚠ Warning: This will trigger nearby sculk sensors for a few seconds when transitioning between biomes.","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -103"}}\
]

tellraw @s [{"text":"\n","color":"aqua"},\
    {"text":"Solid Colour:","bold":true},"\n ",\
        {"text":"█","color":"#FF7F7F","insertion":"#FF7F7F","clickEvent":{"action":"run_command","value":"/trigger dye set -227"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF7F7F"},{"text":"Light Red","bold":true}]}},\
        {"text":"█","color":"#FFBF7F","insertion":"#FFBF7F","clickEvent":{"action":"run_command","value":"/trigger dye set -228"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FFBF7F"},{"text":"Light Orange","bold":true}]}},\
        {"text":"█","color":"#FFFF7F","insertion":"#FFFF7F","clickEvent":{"action":"run_command","value":"/trigger dye set -229"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FFFF7F"},{"text":"Light Yellow","bold":true}]}},\
        {"text":"█","color":"#D7FF7F","insertion":"#D7FF7F","clickEvent":{"action":"run_command","value":"/trigger dye set -230"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#D7FF7F"},{"text":"Light Chartreuse","bold":true}]}},\
        {"text":"█","color":"#7FFF7F","insertion":"#7FFF7F","clickEvent":{"action":"run_command","value":"/trigger dye set -231"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7FFF7F"},{"text":"Light Green","bold":true}]}},\
        {"text":"█","color":"#7FFFD4","insertion":"#7FFFD4","clickEvent":{"action":"run_command","value":"/trigger dye set -232"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7FFFD4"},{"text":"Light Mint","bold":true}]}},\
        {"text":"█","color":"#7FFFFF","insertion":"#7FFFFF","clickEvent":{"action":"run_command","value":"/trigger dye set -233"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7FFFFF"},{"text":"Light Cyan","bold":true}]}},\
        {"text":"█","color":"#7FBFFF","insertion":"#7FBFFF","clickEvent":{"action":"run_command","value":"/trigger dye set -234"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7FBFFF"},{"text":"Light Azure","bold":true}]}},\
        {"text":"█","color":"#7F7FFF","insertion":"#7F7FFF","clickEvent":{"action":"run_command","value":"/trigger dye set -235"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F7FFF"},{"text":"Light Blue","bold":true}]}},\
        {"text":"█","color":"#CB7FFF","insertion":"#CB7FFF","clickEvent":{"action":"run_command","value":"/trigger dye set -236"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#CB7FFF"},{"text":"Light Violet","bold":true}]}},\
        {"text":"█","color":"#FF7FFF","insertion":"#FF7FFF","clickEvent":{"action":"run_command","value":"/trigger dye set -237"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF7FFF"},{"text":"Light Magenta","bold":true}]}},\
        {"text":"█","color":"#FF7FBF","insertion":"#FF7FBF","clickEvent":{"action":"run_command","value":"/trigger dye set -238"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF7FBF"},{"text":"Light Rose","bold":true}]}},\
        {"text":"█","color":"#C29271","insertion":"#C29271","clickEvent":{"action":"run_command","value":"/trigger dye set -244"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#C29271"},{"text":"Light Brown","bold":true}]}},\
        {"text":"█","color":"#BFBFBF","insertion":"#BFBFBF","clickEvent":{"action":"run_command","value":"/trigger dye set -239"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#BFBFBF"},{"text":"Light Grey","bold":true}]}},\
        {"text":"█","color":"#FFFFFF","insertion":"#FFFFFF","clickEvent":{"action":"run_command","value":"/trigger dye set -241"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FFFFFF"},{"text":"White","bold":true}]}},\
    "\n ",\
        {"text":"█","color":"#FF0000","insertion":"#FF0000","clickEvent":{"action":"run_command","value":"/trigger dye set -201"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF0000"},{"text":"Red","bold":true}]}},\
        {"text":"█","color":"#FF7F00","insertion":"#FF7F00","clickEvent":{"action":"run_command","value":"/trigger dye set -202"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF7F00"},{"text":"Orange","bold":true}]}},\
        {"text":"█","color":"#FFFF00","insertion":"#FFFF00","clickEvent":{"action":"run_command","value":"/trigger dye set -203"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FFFF00"},{"text":"Yellow","bold":true}]}},\
        {"text":"█","color":"#B0FF00","insertion":"#B0FF00","clickEvent":{"action":"run_command","value":"/trigger dye set -204"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#B0FF00"},{"text":"Chartreuse","bold":true}]}},\
        {"text":"█","color":"#00FF00","insertion":"#00FF00","clickEvent":{"action":"run_command","value":"/trigger dye set -205"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#00FF00"},{"text":"Green","bold":true}]}},\
        {"text":"█","color":"#00FFA9","insertion":"#00FFA9","clickEvent":{"action":"run_command","value":"/trigger dye set -206"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#00FFA9"},{"text":"Mint","bold":true}]}},\
        {"text":"█","color":"#00FFFF","insertion":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger dye set -207"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#00FFFF"},{"text":"Cyan","bold":true}]}},\
        {"text":"█","color":"#007FFF","insertion":"#007FFF","clickEvent":{"action":"run_command","value":"/trigger dye set -208"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#007FFF"},{"text":"Azure","bold":true}]}},\
        {"text":"█","color":"#0000FF","insertion":"#0000FF","clickEvent":{"action":"run_command","value":"/trigger dye set -209"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#0000FF"},{"text":"Blue","bold":true}]}},\
        {"text":"█","color":"#9700FF","insertion":"#9700FF","clickEvent":{"action":"run_command","value":"/trigger dye set -210"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#9700FF"},{"text":"Violet","bold":true}]}},\
        {"text":"█","color":"#FF00FF","insertion":"#FF00FF","clickEvent":{"action":"run_command","value":"/trigger dye set -211"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF00FF"},{"text":"Magenta","bold":true}]}},\
        {"text":"█","color":"#FF007F","insertion":"#FF007F","clickEvent":{"action":"run_command","value":"/trigger dye set -212"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#FF007F"},{"text":"Rose","bold":true}]}},\
        {"text":"█","color":"#8E5E3D","insertion":"#8E5E3D","clickEvent":{"action":"run_command","value":"/trigger dye set -242"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#8E5E3D"},{"text":"Brown","bold":true}]}},\
        {"text":"█","color":"#7F7F7F","insertion":"#7F7F7F","clickEvent":{"action":"run_command","value":"/trigger dye set -213"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F7F7F"},{"text":"Grey","bold":true}]}},\
    "\n ",\
        {"text":"█","color":"#7F0000","insertion":"#7F0000","clickEvent":{"action":"run_command","value":"/trigger dye set -214"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F0000"},{"text":"Dark Red","bold":true}]}},\
        {"text":"█","color":"#7F3F00","insertion":"#7F3F00","clickEvent":{"action":"run_command","value":"/trigger dye set -215"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F3F00"},{"text":"Dark Orange","bold":true}]}},\
        {"text":"█","color":"#7F7F00","insertion":"#7F7F00","clickEvent":{"action":"run_command","value":"/trigger dye set -216"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F7F00"},{"text":"Dark Yellow","bold":true}]}},\
        {"text":"█","color":"#587F00","insertion":"#587F00","clickEvent":{"action":"run_command","value":"/trigger dye set -217"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#587F00"},{"text":"Dark Chartreuse","bold":true}]}},\
        {"text":"█","color":"#007F00","insertion":"#007F00","clickEvent":{"action":"run_command","value":"/trigger dye set -218"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#007F00"},{"text":"Dark Green","bold":true}]}},\
        {"text":"█","color":"#007F54","insertion":"#007F54","clickEvent":{"action":"run_command","value":"/trigger dye set -219"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#007F54"},{"text":"Dark Mint","bold":true}]}},\
        {"text":"█","color":"#007F7F","insertion":"#007F7F","clickEvent":{"action":"run_command","value":"/trigger dye set -220"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#007F7F"},{"text":"Dark Cyan","bold":true}]}},\
        {"text":"█","color":"#003F7F","insertion":"#003F7F","clickEvent":{"action":"run_command","value":"/trigger dye set -221"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#003F7F"},{"text":"Dark Azure","bold":true}]}},\
        {"text":"█","color":"#00007F","insertion":"#00007F","clickEvent":{"action":"run_command","value":"/trigger dye set -222"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#00007F"},{"text":"Dark Blue","bold":true}]}},\
        {"text":"█","color":"#4B007F","insertion":"#4B007F","clickEvent":{"action":"run_command","value":"/trigger dye set -223"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#4B007F"},{"text":"Dark Violet","bold":true}]}},\
        {"text":"█","color":"#7F007F","insertion":"#7F007F","clickEvent":{"action":"run_command","value":"/trigger dye set -224"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F007F"},{"text":"Dark Magenta","bold":true}]}},\
        {"text":"█","color":"#7F003F","insertion":"#7F003F","clickEvent":{"action":"run_command","value":"/trigger dye set -225"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#7F003F"},{"text":"Dark Rose","bold":true}]}},\
        {"text":"█","color":"#492C18","insertion":"#492C18","clickEvent":{"action":"run_command","value":"/trigger dye set -243"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#492C18"},{"text":"Dark Brown","bold":true}]}},\
        {"text":"█","color":"#3F3F3F","insertion":"#3F3F3F","clickEvent":{"action":"run_command","value":"/trigger dye set -226"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#3F3F3F"},{"text":"Dark Grey","bold":true}]}},\
        {"text":"█","color":"#000000","insertion":"#000000","clickEvent":{"action":"run_command","value":"/trigger dye set -240"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick solid dye colour ","color":"#1F1F1F"},{"text":"Black","bold":true}]}}\
]

tellraw @s [{"text":"\nToggle: ","color":"green"},{"text":"[Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle your custom dye ","color":"red"},{"text":"Off","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -1"}},"  |  ",{"text":"[On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle your custom dye ","color":"green"},{"text":"On","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger dye set -2"}}]

tellraw @s [{"text":"\n","color":"red"},{"text":"Beta","bold":true}," - This feature is new and incomplete and may be buggy! Please report any issues to the #issue-reports channel on Discord."]
tellraw @s {"text":"=============================","color":"aqua"}
