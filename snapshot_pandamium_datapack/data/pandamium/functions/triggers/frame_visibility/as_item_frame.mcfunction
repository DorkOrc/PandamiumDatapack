execute store success score <returned> variable unless data entity @s Item run tellraw @a[tag=source,limit=1] [{"text":"[Frame Visibility]","color":"dark_red"},{"text":" The item frame you are looking at does not have an item in it!","color":"red"}]
execute if score <returned> variable matches 0 run function pandamium:triggers/frame_visibility/toggle_invisible
