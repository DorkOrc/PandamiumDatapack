execute if entity @s[tag=pose.locked] unless score <pose> variable matches -403 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_red"},{"text":" The armour stand you are looking at is locked!","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:triggers/pose/do_edit
