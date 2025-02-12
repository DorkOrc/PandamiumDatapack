execute store success score <displayed_error> variable if score <has_printed_menu> variable matches 1

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <valid_option> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s reward_credits < <cost> variable run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You do not have enough reward credits!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" Your inventory is full!",color:"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s jailed matches 1.. run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot use that trigger in jail!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s parkour.checkpoint matches 0.. run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot use that trigger currently!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[gamemode=spectator] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot use that trigger in spectator mode!",color:"red"}]

# Option-specific error messages

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -9 unless score <player_count> global matches 5.. run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There must be at least 5 players online for you to buy that!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -11 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn a Shulker at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -14 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn a Zombie Horse at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -14 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Zombie Horse here!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -18 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn a Camel at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -18 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Camel here!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -19 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn a Sniffer at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -19 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Sniffer here!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -23 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn a Breeze at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -23 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Breeze here!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -25 unless score <empty_inventory_slots> variable matches 3.. run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room in your inventory!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -28 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn an Bogged at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -28 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Bogged here!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -29 if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" You cannot spawn an Wolf at spawn!",color:"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s rewards_shop matches -29 if score <mob_cannot_spawn> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" There is not enough room to spawn a Wolf here!",color:"red"}]

#

execute unless score <displayed_error> variable matches 1 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" Something went wrong!",color:"red"}]
execute unless score <displayed_error> variable matches 1 run tellraw @s [{text:"[debug info]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[["value = ",{score:{name:"@s",objective:"rewards_shop"}}],["\n<section> = ",{score:{name:"<section>",objective:"variable"}}],["\n<value_in_section> = ",{score:{name:"<value_in_section>",objective:"variable"}}],["\n<reference_value> = ",{score:{name:"<reference_value>",objective:"variable"}}],["\n<cost> = ",{score:{name:"<cost>",objective:"variable"}}],["\n<has_given> = ",{score:{name:"<has_given>",objective:"variable"}}]]}}]
