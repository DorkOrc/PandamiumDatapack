# arguments: cost, reward_id, function, properties

$data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*" set value {cost:$(cost),reward_id:"$(reward_id)",reward:{type:"function",function:"$(function)"},properties:$(properties)}

# get icon item
execute in pandamium:staff_world run item replace block 2 0 0 container.0 with minecraft:air
execute in pandamium:staff_world run function pandamium:startup/rewards_shop/load_rewards/try_icon with storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
execute in pandamium:staff_world unless items block 2 0 0 container.0 * run function pandamium:startup/rewards_shop/load_rewards/try_rewards with storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
$execute in pandamium:staff_world unless items block 2 0 0 container.0 * run return run function pandamium:utils/log_exception {args:{message:"Failed to register rewards shop [function] entry: $(reward_id)"}}

execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".icon set from block 2 0 0 Items[{Slot:0b}]
data remove storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".icon.Slot

# get reward name from icon item
execute unless data storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".properties.name run execute in pandamium:staff_world run function pandamium:utils/get/item_display_name {source:"block 2 0 0 container.0"}
execute unless data storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".properties.name run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".name set from storage pandamium:temp item_display_name
execute if data storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".properties.name run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".name set from storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".properties.name
execute unless data storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".name run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".name set from storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*".reward_id

# append reward
data modify storage pandamium:rewards_shop rewards append from storage pandamium:local functions."pandamium:startup/rewards_shop/load_rewards/*"
data remove storage pandamium:rewards_shop rewards[-1].properties
execute store result storage pandamium:rewards_shop rewards[-1].reward_index int 1 if data storage pandamium:rewards_shop rewards[]
