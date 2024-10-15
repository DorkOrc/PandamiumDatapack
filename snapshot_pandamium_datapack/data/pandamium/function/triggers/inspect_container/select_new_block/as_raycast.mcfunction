function pandamium:utils/raycast/to_block
execute positioned as @s unless block ~ ~ ~ #pandamium:containers store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Container]","color":"dark_red"},{"text":" You are not looking at a container!","color":"red"}]
execute if score <returned> variable matches 0 positioned as @s as @a[tag=source,limit=1] run function pandamium:triggers/inspect_container/select_new_block/at_block
function pandamium:utils/kill_technical_entity_discretely
