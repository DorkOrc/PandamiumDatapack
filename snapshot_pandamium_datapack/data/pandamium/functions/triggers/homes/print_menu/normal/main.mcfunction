tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Homes List","bold":true}," ========"]

data modify storage pandamium:temp unset_homes set value [I;]
function pandamium:triggers/homes/print_menu/normal/list
execute store result score <length> variable run data get storage pandamium:temp unset_homes

execute if score @s gameplay_perms matches 3.. unless score @s hide_unset_homes matches 1 run tellraw @s \
    [{"text":"\nShow Unset Homes: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Unset Homes","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s gameplay_perms matches 3.. if score @s hide_unset_homes matches 1 run tellraw @s ["",\
        [{"text":"\n[","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Available Home Slots: ","color":"dark_green"},{"color":"green","storage":"pandamium:temp","nbt":"unset_homes[]","separator":{"text":", ","color":"dark_green"}}]}},{"score":{"name":"<length>","objective":"variable"}}," Available Home Slots]"],\
        "\n",\
        [{"text":"Show Unset Homes: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Unset Homes","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}},{"text":"Off","color":"yellow","bold":true}]\
    ]

tellraw @s [{"text":"\nℹ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Ways to create or replace a home:","color":"aqua"},[{"text":"\n• Click the ","color":"green"},{"text":"[+]","color":"dark_green"}," next to that home in the list.\n• Run ",[{"text":"/trigger","color":"gray"},{"text":" sethome","color":"aqua"}," set",{"text":" <home id>","color":"yellow"}],"."],"\n\nWays to teleport to a home:",[{"text":"\n• Click the ","color":"green"},{"text":"[→]","color":"blue"}," next to that home in the list.\n• Run ",[{"text":"/trigger","color":"gray"},{"text":" home","color":"aqua"}," set",{"text":" <home id>","color":"yellow"}],"."],"\n\nWays to name or rename a home:",[{"text":"\n• Click the ","color":"green"},{"text":"[✎]","color":"yellow"}," next to that home in the list.\n• Run ",[{"text":"/trigger","color":"gray"},{"text":" namehome","color":"aqua"}," set",{"text":" <home id>","color":"yellow"}],"."]]}},[{"text":" ","color":"green"},{"text":"Hover here","color":"aqua"}," to learn how to",{"text":" create","color":"aqua"},",",{"text":" name","color":"aqua"}," and",{"text":" teleport to","color":"aqua"}," homes."]]

tellraw @s {"text":"============================","color":"aqua"}
