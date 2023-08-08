tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"aqua"},{"text":"Homes List","bold":true}," ========"]

function pandamium:triggers/homes/print_menu/normal/list

execute if entity @s[tag=source] run tellraw @a[tag=source,limit=1] [{"text":"\nℹ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Ways to set a home:","color":"aqua"},[{"text":"\n• Click the ","color":"green"},{"text":"[+]","color":"dark_green","bold":true}," next to that home in the list.\n• Run ",[{"text":"/trigger","color":"gray"},{"text":" sethome","color":"aqua"}," set",{"text":" <home id>","color":"yellow"}],"."],"\nWays to teleport to a home:",[{"text":"\n• Click the ","color":"green"},{"text":"[→]","color":"blue","bold":true}," next to that home in the list.\n• Run ",[{"text":"/trigger","color":"gray"},{"text":" home","color":"aqua"}," set",{"text":" <home id>","color":"yellow"}],"."]]}},[{"text":" ","color":"green"},{"text":"Hover here","color":"aqua"}," to learn how to",{"text":" create","color":"aqua"}," or",{"text":" teleport","color":"aqua"}," to homes."]]

tellraw @a[tag=source,limit=1] {"text":"============================","color":"aqua"}
