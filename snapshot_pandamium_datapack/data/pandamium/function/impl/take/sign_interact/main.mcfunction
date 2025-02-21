execute unless dimension pandamium:staff_world run return fail
execute unless block ~ ~ ~ oak_wall_sign run return fail
execute unless block ~1 ~ ~ chest{components:{"minecraft:custom_data":{pandamium:{staff_world_chest:{}}}}} run return fail

# get chest type
execute store success score <double_chest> variable if block ~1 ~ ~ chest{components:{"minecraft:custom_data":{pandamium:{staff_world_chest:{chest_type:"double"}}}}}

# just remove the chest if it is empty
scoreboard players set <chest_contains_items> variable 1
execute if score <double_chest> variable matches 0 unless items block ~1 ~ ~ container.* * run scoreboard players set <chest_contains_items> variable 0
execute if score <double_chest> variable matches 1 unless items block ~1 ~ ~ container.* * unless items block ~1 ~ ~1 container.* * run scoreboard players set <chest_contains_items> variable 0

execute if score <chest_contains_items> variable matches 0 run tellraw @s [{color:"dark_green",text:"[Staff World Chest]"},{color:"green",text:" Removed empty chest!"}]
execute if score <chest_contains_items> variable matches 0 run return run function pandamium:impl/take/sign_interact/remove_chest

# get contents owner
execute store result score <id> variable store result storage pandamium:local functions."pandamium:impl/take/sign_interact/*".id int 1 run data get block ~1 ~ ~ components.minecraft:custom_data.pandamium.staff_world_chest.contents_owner.id
execute unless score <id> variable matches 2.. run return run tellraw @s [{color:"dark_red",text:"[Staff World Chest]"},{color:"red",text:" Could not resolve contents owner!"}]
function pandamium:utils/get/username/from_id with storage pandamium:local functions."pandamium:impl/take/sign_interact/*"
execute unless data storage pandamium:temp username run return run tellraw @s [{color:"dark_red",text:"[Staff World Chest]"},{color:"red",text:" Could not resolve contents owner!"}]

# check for Ctrl key
execute unless predicate pandamium:player/input/sprint run return run tellraw @s [{color:"dark_red",text:"[Staff World Chest]"},[{color:"red",text:" Hold Ctrl whilst Right-Clicking this sign to return this chest's contents to "},{storage:"pandamium:temp",nbt:"username"},"!"]]

# return items to player and remove chest
function pandamium:impl/take/sign_interact/return_items/main
function pandamium:impl/take/sign_interact/remove_chest

# feedback
tellraw @s [{color:"dark_green",text:"[Staff World Chest]"},[{color:"green",text:" Returned the contents of this chest to "},{storage:"pandamium:temp",nbt:"username",color:"aqua"}," and removed the chest!"]]
