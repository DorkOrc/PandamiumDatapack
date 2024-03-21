setblock 2 0 0 yellow_shulker_box

item replace block 2 0 0 container.0 from entity @s armor.feet
item replace block 2 0 0 container.1 from entity @s armor.legs
item replace block 2 0 0 container.2 from entity @s armor.chest
item replace block 2 0 0 container.3 from entity @s armor.head
item replace block 2 0 0 container.4 from entity @s weapon.mainhand
item replace block 2 0 0 container.5 from entity @s weapon.offhand

item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand with barrier[custom_data={pandamium:{clear:1b}}]

loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]

item replace entity @s weapon.mainhand with air
