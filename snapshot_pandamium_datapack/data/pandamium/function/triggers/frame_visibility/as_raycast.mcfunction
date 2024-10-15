function pandamium:utils/raycast/to_entity/item_frame
execute if score <hit_target> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" You are not looking at an item frame!","color":"red"}]
execute if score <hit_target> variable matches 1 on origin at @s run function pandamium:triggers/frame_visibility/as_item_frame
function pandamium:utils/kill_technical_entity_discretely
