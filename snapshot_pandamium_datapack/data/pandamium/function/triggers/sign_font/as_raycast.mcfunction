function pandamium:utils/raycast/to_block

execute positioned as @s unless block ~ ~ ~ #all_signs run tellraw @a[tag=source,limit=1] [{text:"[Sign Font]",color:"dark_red"},{text:" You are not looking at a sign!",color:"red"}]
execute positioned as @s unless block ~ ~ ~ #all_signs run return run function pandamium:utils/kill_technical_entity_discretely

execute positioned as @s as @a[tag=source,limit=1] run function pandamium:triggers/sign_font/at_block
function pandamium:utils/kill_technical_entity_discretely
