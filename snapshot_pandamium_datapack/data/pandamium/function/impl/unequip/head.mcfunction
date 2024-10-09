setblock 2 0 0 yellow_shulker_box

item replace block 2 0 0 container.2 from entity @s armor.head

item replace entity @s armor.head with air

loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]
