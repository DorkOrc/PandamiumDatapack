# arguments: cost, reward_id

$data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*" set value {cost:$(cost),reward_id:"$(reward_id)",reward:{type:"items",loot_table:"pandamium:rewards_shop/rewards/$(reward_id)"}}

# get icon item
execute in pandamium:staff_world run item replace block 2 0 0 container.0 with minecraft:air
execute in pandamium:staff_world run function pandamium:startup/rewards_shop/load_rewards/try_icon with storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
execute in pandamium:staff_world unless items block 2 0 0 container.0 * run function pandamium:startup/rewards_shop/load_rewards/try_rewards with storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
$execute in pandamium:staff_world unless items block 2 0 0 container.0 * run return run function pandamium:utils/log_exception {args:{message:"Failed to register rewards shop [items] entry: $(reward_id)"}}

execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".icon set from block 2 0 0 Items[{Slot:0b}]
data remove storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".icon.Slot

# get reward name from icon item
execute in pandamium:staff_world run function pandamium:utils/get/item_display_name {source:"block 2 0 0 container.0"}
data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".name set from storage pandamium:temp item_display_name

# append reward
data modify storage pandamium:rewards_shop rewards append from storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
execute store result storage pandamium:rewards_shop rewards[-1].reward_index int 1 if data storage pandamium:rewards_shop rewards[]
