# run IN pandamium:staff_world

setblock 0 0 0 shulker_box
item replace block 0 0 0 container.0 from entity @s armor.head
item replace entity @s armor.head with air
loot give @s mine 0 0 0 air{drop_contents:1b}

scoreboard players set <filled_head_slot> variable 0
