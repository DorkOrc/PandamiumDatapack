setblock 2 0 0 yellow_shulker_box

item replace block 2 0 0 container.0 from entity @s armor.feet
item replace block 2 0 0 container.1 from entity @s armor.legs
item replace block 2 0 0 container.2 from entity @s armor.chest
item replace block 2 0 0 container.3 from entity @s armor.head

item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air

loot give @s mine 2 0 0 barrier{drop_contents:1b}
