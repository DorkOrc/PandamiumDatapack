execute if score @s vote_shop matches -1 run give @s diamond
execute if score @s vote_shop matches -2 run give @s experience_bottle 5
execute if score @s vote_shop matches -3 run give @s golden_apple
execute if score @s vote_shop matches -4 run give @s endermite_spawn_egg
execute if score @s vote_shop matches -5 run give @s enchanted_book{StoredEnchantments:[{id:'minecraft:mending',lvl:1s}]}
execute if score @s vote_shop matches -6 run give @s enchanted_golden_apple
execute if score @s vote_shop matches -7 run give @s potion{Potion:'minecraft:luck'}
execute if score @s vote_shop matches -8 run function pandamium:misc/vote_shop/mini_blocks/buy_mini_block
execute if score @s vote_shop matches -9 as @r run loot give @p[tag=running_trigger] loot pandamium:head
execute if score @s vote_shop matches -10 run loot give @s loot pandamium:head
execute if score @s vote_shop matches -11 at @s run summon shulker ~ ~ ~ {Color:16b}
execute if score @s vote_shop matches -12 in pandamium:staff_world run function pandamium:misc/vote_shop/give_caves_and_cliffs_loot_bag
execute if score @s vote_shop matches -13 at @e[type=marker,tag=raycast.bedrock,limit=1] run setblock ~ ~ ~ air destroy
