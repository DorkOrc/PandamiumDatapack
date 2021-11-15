# run IN pandamium:staff_world

setblock 0 0 0 shulker_box
item replace block 0 0 0 container.0 from entity @s armor.chest
item replace entity @s armor.chest with air
loot give @s mine 0 0 0 air{drop_contents:1b}
