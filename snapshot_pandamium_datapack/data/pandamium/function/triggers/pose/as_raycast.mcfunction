function pandamium:utils/raycast/to_entity/armor_stand
execute if score <hit_target> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_red"},{"text":" You are not looking at an armour stand!","color":"red"}]
execute if score <hit_target> variable matches 1 on origin at @s run function pandamium:triggers/pose/as_target
function pandamium:utils/kill_technical_entity_discretely
