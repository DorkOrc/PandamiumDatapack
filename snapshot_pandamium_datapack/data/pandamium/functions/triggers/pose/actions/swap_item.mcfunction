execute in pandamium:staff_world run setblock 0 0 0 barrel

scoreboard players set <cannot_swap> variable 0
execute if data entity @s {Invisible:1b} as @a[tag=source,limit=1] unless predicate pandamium:holding_anything_in_mainhand store success score <cannot_swap> variable store success score <returned> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Pose]","color":"dark_red"}," You cannot take items off of an armour stand while it is invisible!"]

execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -302 in pandamium:staff_world run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -302 run item replace entity @s armor.head from entity @a[tag=source,limit=1] weapon.mainhand
execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -302 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped out target's ",{"text":"head","color":"aqua"}," slot!"]

execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -303 in pandamium:staff_world run item replace block 0 0 0 container.0 from entity @s weapon.offhand
execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -303 run item replace entity @s weapon.offhand from entity @a[tag=source,limit=1] weapon.mainhand
execute if score <cannot_swap> variable matches 0 if score <pose> variable matches -303 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped out target's ",{"text":"off-hand","color":"aqua"}," slot!"]

execute if score <cannot_swap> variable matches 0 in pandamium:staff_world run item replace entity @a[tag=source,limit=1] weapon.mainhand from block 0 0 0 container.0

scoreboard players set <sound> variable 3
