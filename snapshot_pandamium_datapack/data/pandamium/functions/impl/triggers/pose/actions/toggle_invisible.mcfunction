execute store success score <is_invisible> variable if data storage pandamium:temp pose.nbt{Invisible:1b}
scoreboard players set <can_toggle_invisible> variable 0
execute if data storage pandamium:temp pose.nbt.ArmorItems[].id run scoreboard players set <can_toggle_invisible> variable 1
execute if data storage pandamium:temp pose.nbt.HandItems[].id run scoreboard players set <can_toggle_invisible> variable 1

execute if score <is_invisible> variable matches 1 if score <can_toggle_invisible> variable matches 1 run data merge entity @s {Invisible:0b,DisabledSlots:0}
execute if score <is_invisible> variable matches 1 if score <can_toggle_invisible> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"Invisible","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <is_invisible> variable matches 0 if score <can_toggle_invisible> variable matches 1 run data merge entity @s {Invisible:1b,DisabledSlots:4144959}
execute if score <is_invisible> variable matches 0 if score <can_toggle_invisible> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"Invisible","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]

execute if score <is_invisible> variable matches 0 if score <can_toggle_invisible> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_red"},{"text":" You can only make armour stands invisible if they have items on them!","color":"red"}]
