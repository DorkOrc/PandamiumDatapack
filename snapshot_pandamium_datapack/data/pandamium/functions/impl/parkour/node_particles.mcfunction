execute if entity @s[tag=parkour.point_of_interest] run particle falling_dust diamond_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour.checkpoint=0..}]
execute if entity @s[tag=!parkour.point_of_interest] if score @s parkour.node_id matches 0.. run particle falling_dust gold_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour.checkpoint=0..}]
execute if entity @s[tag=!parkour.point_of_interest] unless score @s parkour.node_id matches 0.. run particle falling_dust lapis_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour.checkpoint=0..}]
