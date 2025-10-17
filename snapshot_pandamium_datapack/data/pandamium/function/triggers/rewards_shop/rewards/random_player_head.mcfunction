execute store result score <non_vanished_player_count> variable if entity @a[predicate=!pandamium:player/is_vanished]
execute unless score <non_vanished_player_count> variable matches 5.. run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" There must be at least 5 players online for you to buy this item!"}] }

# choose a target
scoreboard players operation <id> variable = @s last_player_head_user_id
execute as @r[predicate=!pandamium:matches_id,predicate=!pandamium:player/is_vanished] run function pandamium:triggers/rewards_shop/rewards/__random_player_head__/as_target

# return success
return 1
