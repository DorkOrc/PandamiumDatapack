execute if score <double_chest> variable matches 0 unless items block ~1 ~ ~ container.* * run return 1
execute if score <double_chest> variable matches 1 unless items block ~1 ~ ~ container.* * unless items block ~1 ~ ~1 container.* * run return 1

# return items
loot replace block 2 0 0 container.0 27 loot pandamium:intentionally_empty
loot replace block 2 1 0 container.0 27 loot pandamium:intentionally_empty

data modify block 2 0 0 Items set from block ~1 ~ ~ Items
execute if score <double_chest> variable matches 1 run data modify block 2 1 0 Items set from block ~1 ~ ~1 Items

loot replace block ~1 ~ ~ container.0 27 loot pandamium:intentionally_empty
execute if score <double_chest> variable matches 1 run loot replace block ~1 ~ ~1 container.0 27 loot pandamium:intentionally_empty

execute as @a[predicate=pandamium:matches_id,limit=1] run return run function pandamium:impl/take/sign_interact/return_items/online
function pandamium:impl/take/sign_interact/return_items/offline
