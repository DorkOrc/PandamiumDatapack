function pandamium:utils/raycast/to_block
execute positioned as @s unless block ~ ~ ~ #all_signs store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Sign Font]","color":"dark_red"},{"text":" You are not looking at a sign!","color":"red"}]
execute if score <returned> variable matches 0 positioned as @s as @a[tag=source,limit=1] run function pandamium:triggers/sign_font/at_block
function pandamium:utils/kill
