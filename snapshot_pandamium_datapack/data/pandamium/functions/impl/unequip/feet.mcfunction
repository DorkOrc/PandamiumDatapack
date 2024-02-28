setblock 2 0 0 yellow_shulker_box

item replace block 2 0 0 container.2 from entity @s armor.feet

item replace entity @s armor.feet with air

loot give @s mine 2 0 0 barrier{drop_contents:1b}
