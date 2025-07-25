scoreboard players set <can_buy> variable 1
scoreboard players set <mob_cannot_spawn> variable 0

execute if score <valid_option> variable matches 0 run scoreboard players set <can_buy> variable 0

# Count filled inventory slots
scoreboard players set <gives_item> variable 0
execute unless score @s rewards_shop matches -11 unless score @s rewards_shop matches -14 unless score @s rewards_shop matches -18 unless score @s rewards_shop matches -19 unless score @s rewards_shop matches -23 unless score @s rewards_shop matches -28 run scoreboard players set <gives_item> variable 1

# Check requirements
execute if score <can_buy> variable matches 1 if score @s reward_credits < <cost> variable run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score <gives_item> variable matches 1 unless predicate pandamium:player/can_pick_up_any_item run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s jailed matches 1.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s parkour.checkpoint matches 0.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if entity @s[gamemode=spectator] run scoreboard players set <can_buy> variable 0

execute store result score <non_vanished_player_count> variable if entity @a[predicate=!pandamium:player/is_vanished]
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -9 unless score <non_vanished_player_count> variable matches 5.. run scoreboard players set <can_buy> variable 0

execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -11 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -14 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -14 run function pandamium:triggers/vote_shop/check_can_summon_zombie_horse
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -18 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -18 run function pandamium:triggers/vote_shop/check_can_summon_camel
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -19 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -19 run function pandamium:triggers/vote_shop/check_can_summon_sniffer
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -23 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -23 run function pandamium:triggers/vote_shop/check_can_summon_breeze
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -25 run function pandamium:utils/count_filled_inventory_slots
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -25 unless score <empty_inventory_slots> variable matches 3.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -28 if entity @s[predicate=pandamium:in_spawn] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s rewards_shop matches -28 run function pandamium:triggers/vote_shop/check_can_summon_bogged

# (try) Give item
scoreboard players set <has_given> variable 0
scoreboard players set <has_printed_menu> variable 0
execute if score <can_buy> variable matches 1 run function pandamium:triggers/vote_shop/purchase/main

# Mini-block advancement
execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 run advancement grant @s only pandamium:pandamium/mini_blocks/buy_mini_block
execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s

# Remove credits
execute if score <can_buy> variable matches 1 run scoreboard players operation @s reward_credits -= <cost> variable

# Display success
execute if score <can_buy> variable matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Rewards Shop]",color:"dark_green"},{text:" Purchase successful",color:"aqua"},"! You now have ",{score:{name:"@s",objective:"reward_credits"},bold:true,color:"aqua"}," reward credit",{text:"(s)",color:"gray"},"! ",{text:"(-",color:"red",extra:[{score:{objective:"variable",name:"<cost>"},bold:true},")"]}]

# Display an error message
execute if score <can_buy> variable matches 0 run function pandamium:triggers/vote_shop/print_error_message
