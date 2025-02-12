execute if items block ~1 ~ ~ container.* * run return run tellraw @s [{text:"[Staff World Chest]",color:"dark_red"},{text:" There are still items in this chest!",color:"red"}]
execute if score <double_chest> variable matches 1 if items block ~1 ~ ~1 container.* * run return run tellraw @s [{text:"[Staff World Chest]",color:"dark_red"},{text:" There are still items in this chest!",color:"red"}]

execute if score <double_chest> variable matches 0 run clone ~ ~1 ~ ~1 319 ~ ~ ~ ~ strict replace force
execute if score <double_chest> variable matches 0 run fill ~ 319 ~ ~ 319 ~ air strict
execute if score <double_chest> variable matches 1 run clone ~ ~1 ~ ~1 319 ~1 ~ ~ ~ strict replace force
execute if score <double_chest> variable matches 1 run fill ~ 319 ~ ~1 319 ~1 air strict

execute store result score <user_id> variable store result storage pandamium:local functions."pandamium:impl/take/sign_interact/*".id int 1 run data get block ~1 ~ ~ components.minecraft:custom_data.pandamium.staff_world_chest.contents_owner.id
execute unless score <user_id> variable matches 2.. run return run tellraw @s [{text:"[Staff World Chest]",color:"dark_green"},{text:" Removed empty chest!",color:"green"}]
function pandamium:utils/get/username/from_id with storage pandamium:local functions."pandamium:impl/take/sign_interact/*"
tellraw @s [{text:"[Staff World Chest]",color:"dark_green"},[{text:" Removed ",color:"green"},{storage:"pandamium:temp",nbt:"username"},"'s chest!"]]
