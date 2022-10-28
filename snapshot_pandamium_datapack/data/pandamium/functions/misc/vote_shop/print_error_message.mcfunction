execute store success score <displayed_error> variable if score <has_printed_menu> variable matches 1

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <valid_option> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_credits < <cost> variable run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You do not have enough vote credits!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" Your inventory is full!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s jailed matches 1.. run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot use that trigger in jail!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot use that trigger currently!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot use that trigger in spectator mode!","color":"red"}]

# Option-specific error messages

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score @s vote_shop matches -8 unless data entity @s SelectedItem run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You must be holding an item in your main hand!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score @s vote_shop matches -8 if score <has_given> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" Cannot mini-block-ify that item!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -9 unless score <player_count> variable matches 10.. run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" There must be at least 10 players online for you to buy that!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -11 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot spawn a Shulker at spawn!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -13 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot buy that at spawn!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -13 if score <near_nether_roof> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot buy that here! You must be looking at a piece of bedrock between y=120 and y=128 in The Nether.","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -13 unless score <raycast_in_block> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot buy that here! You must be looking at a piece of bedrock between y=120 and y=128 in The Nether.","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -13 if score <raycast_in_spawn> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot buy that at spawn!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -14 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot spawn a Zombie Horse at spawn!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -14 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" There is not enough room to spawn a Zombie Horse here!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -18 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You cannot spawn a Camel at spawn!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -18 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" There is not enough room to spawn a Camel here!","color":"red"}]

#

execute unless score <displayed_error> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]
execute unless score <displayed_error> variable matches 1 run tellraw @s [{"text":"[debug info]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[["value = ",{"score":{"name":"@s","objective":"vote_shop"}}],["\n<section> = ",{"score":{"name":"<section>","objective":"variable"}}],["\n<value_in_section> = ",{"score":{"name":"<value_in_section>","objective":"variable"}}],["\n<reference_value> = ",{"score":{"name":"<reference_value>","objective":"variable"}}],["\n<cost> = ",{"score":{"name":"<cost>","objective":"variable"}}]]}}]
