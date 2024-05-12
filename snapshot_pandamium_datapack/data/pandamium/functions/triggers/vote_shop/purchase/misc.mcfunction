# Section -1

execute if score <value_in_section> variable matches 1 store success score <has_given> variable run give @s diamond
execute if score <value_in_section> variable matches 2 store success score <has_given> variable run give @s experience_bottle 5
execute if score <value_in_section> variable matches 3 store success score <has_given> variable run give @s golden_apple
execute if score <value_in_section> variable matches 4 store success score <has_given> variable run give @s endermite_spawn_egg
execute if score <value_in_section> variable matches 5 store success score <has_given> variable run give @s enchanted_book[minecraft:stored_enchantments={levels:{"minecraft:mending":1}}]
execute if score <value_in_section> variable matches 6 store success score <has_given> variable run give @s enchanted_golden_apple
execute if score <value_in_section> variable matches 7 store success score <has_given> variable run loot give @s loot pandamium:items/custom/blindness_splash_potion
execute if score <value_in_section> variable matches 8 run function pandamium:triggers/vote_shop/purchase/mini_blocks/from_storage/main
execute if score <value_in_section> variable matches 9 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_online_player_head
execute if score <value_in_section> variable matches 10 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_own_head
execute if score <value_in_section> variable matches 11 store success score <has_given> variable at @s summon minecraft:shulker run data merge entity @s {Tags: ["unnatural"], Color: 16b}
execute if score <value_in_section> variable matches 12 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_caves_and_cliffs_loot_bag
execute if score <value_in_section> variable matches 13 run scoreboard players set <has_given> variable 1
execute if score <value_in_section> variable matches 14 store success score <has_given> variable at @s summon minecraft:zombie_horse run data merge entity @s {Tags: ["unnatural"], Tame:1b}
execute if score <value_in_section> variable matches 15 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_wild_loot_bag
execute if score <value_in_section> variable matches 16 store success score <has_given> variable run give @s enchanted_book[minecraft:stored_enchantments={levels:{"minecraft:swift_sneak":5}}]
execute if score <value_in_section> variable matches 17 store success score <has_given> variable run give @s stick[minecraft:enchantments={levels:{"minecraft:knockback":5}}]
execute if score <value_in_section> variable matches 21 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_trails_and_tales_loot_bag
execute if score <value_in_section> variable matches 22 store success score <has_given> variable run give @s crafter
execute if score <value_in_section> variable matches 23 store success score <has_given> variable at @s summon minecraft:breeze run data merge entity @s {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 24 store success score <has_given> variable run loot give @s loot pandamium:items/custom/dwarven_potion
execute if score <value_in_section> variable matches 25 store success score <has_given> variable at @s summon minecraft:armadillo run data merge entity @s {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 26 store success score <has_given> variable run give @s wind_charge 16
execute if score <value_in_section> variable matches 27 store success score <has_given> variable run give @s wolf_armor
execute if score <value_in_section> variable matches 28 store success score <has_given> variable at @s summon minecraft:bogged run data merge entity @s {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 29 store success score <has_given> variable at @s run function pandamium:triggers/vote_shop/purchase/summon_random_wolf
execute if score <value_in_section> variable matches 30 store success score <has_given> variable run give @s mace
execute if score <value_in_section> variable matches 31 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_ominous_bottle
execute if score <value_in_section> variable matches 32 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_1_21_potion
execute if score <value_in_section> variable matches 33 store success score <has_given> variable run give @s name_tag
execute if score <value_in_section> variable matches 34 store success score <has_given> variable run give @s writable_book
execute if score <value_in_section> variable matches 35 store success score <has_given> variable run give @s music_disc_creator_music_box
execute if score <value_in_section> variable matches 36 store success score <has_given> variable run give @s music_disc_creator
execute if score <value_in_section> variable matches 37 store success score <has_given> variable run give @s music_disc_precipice

execute if score <value_in_section> variable matches 50 store success score <has_given> variable run give @s lapis_lazuli 24
