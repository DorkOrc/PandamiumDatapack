# run IN pandamium:staff_world
# run AS the armor_stand

setblock 0 0 0 shulker_box

execute if score <pose> variable matches -65 run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <pose> variable matches -66 run item replace block 0 0 0 container.0 from entity @s weapon.offhand

execute if score <pose> variable matches -65 run item replace entity @s armor.head from entity @p[tag=running_trigger] weapon.mainhand
execute if score <pose> variable matches -66 run item replace entity @s weapon.offhand from entity @p[tag=running_trigger] weapon.mainhand

item replace entity @p[tag=running_trigger] weapon.mainhand from block 0 0 0 container.0
