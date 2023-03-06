scoreboard players set <can_glow> variable 0
execute if entity @s[type=glow_item_frame] run scoreboard players set <can_glow> variable 1
execute if data entity @s[type=item_display] item.tag.pandamium.edit_item_frame.entity{id:"minecraft:glow_item_frame"} run scoreboard players set <can_glow> variable 1
execute if score <can_glow> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Can only apply this to glow item frames!","color":"red"}]

execute if score <returned> variable matches 0 store success entity @s Glowing byte 1 unless data entity @s {Glowing:1b}

execute if score <returned> variable matches 0 run scoreboard players set <sound> variable 1
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled Glowing!","color":"green"}]
