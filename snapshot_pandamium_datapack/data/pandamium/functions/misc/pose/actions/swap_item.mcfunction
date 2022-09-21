execute in pandamium:staff_world run setblock 0 0 0 barrel

execute if score <pose> variable matches -302 in pandamium:staff_world run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <pose> variable matches -302 run item replace entity @s armor.head from entity @p[tag=running_trigger] weapon.mainhand
execute if score <pose> variable matches -302 store success score <returned> variable run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped the nearest armour stand's ",{"text":"head","color":"aqua"}," slot and your selected item!"]

execute if score <pose> variable matches -303 in pandamium:staff_world run item replace block 0 0 0 container.0 from entity @s weapon.offhand
execute if score <pose> variable matches -303 run item replace entity @s weapon.offhand from entity @p[tag=running_trigger] weapon.mainhand
execute if score <pose> variable matches -303 store success score <returned> variable run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped the nearest armour stand's ",{"text":"off-hand","color":"aqua"}," slot and your selected item!"]

execute in pandamium:staff_world run item replace entity @p[tag=running_trigger] weapon.mainhand from block 0 0 0 container.0

scoreboard players set <sound> variable 3