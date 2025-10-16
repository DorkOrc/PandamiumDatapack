# fetch reward
scoreboard players set <reward_index> variable 0
scoreboard players operation <reward_index> variable -= @s rewards_shop
execute if score <rewards_shop> variable matches ..0 run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" Invalid reward ID!"}] }

execute store result storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward_index int 1 run scoreboard players get <reward_index> variable
function pandamium:triggers/rewards_shop/buy/fetch_reward with storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*"
execute unless data storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" Invalid reward!"}] }

# check cost
execute unless data storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".cost run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" Invalid reward cost!"}] }
execute store result score <cost> variable run data get storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".cost
execute unless score @s reward_credits >= <cost> variable run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" You do not have enough reward credits to buy this!"}] }

# items type
execute if data storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward{type:"items"} unless predicate pandamium:player/can_pick_up_any_item run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" Your inventory is too full!"}] }
execute if data storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward{type:"items"} run return run function pandamium:triggers/rewards_shop/buy/give_items with storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward

# function type
execute if data storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward{type:"function"} run return run function pandamium:triggers/rewards_shop/buy/run_function with storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*".reward

# else
return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" Invalid reward!"}] }
