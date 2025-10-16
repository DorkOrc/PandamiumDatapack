execute store result score <non_vanished_player_count> variable if entity @a[predicate=!pandamium:player/is_vanished]
execute unless score <non_vanished_player_count> variable matches 5.. run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" There must be at least 5 players online for you to buy this item!"}] }

tag @s add rewards_shop.this
execute as @r[predicate=!pandamium:player/is_vanished] run loot give @a[limit=1,tag=rewards_shop.this] loot pandamium:utility/head
tag @s remove rewards_shop.this

return 1
