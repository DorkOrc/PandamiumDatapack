# Section -1

execute if score <value_in_section> variable matches 1 store success score <has_given> variable run give @s diamond
execute if score <value_in_section> variable matches 2 store success score <has_given> variable run give @s experience_bottle 5
execute if score <value_in_section> variable matches 3 store success score <has_given> variable run give @s golden_apple
execute if score <value_in_section> variable matches 4 store success score <has_given> variable run loot give @s loot pandamium:items/custom/endermite_minecart
execute if score <value_in_section> variable matches 5 store success score <has_given> variable run give @s enchanted_book[minecraft:stored_enchantments={"minecraft:mending":1}]
execute if score <value_in_section> variable matches 6 store success score <has_given> variable run give @s enchanted_golden_apple
execute if score <value_in_section> variable matches 7 store success score <has_given> variable run loot give @s loot pandamium:items/custom/blindness_splash_potion
execute if score <value_in_section> variable matches 8 store success score <has_given> variable run loot give @s loot pandamium:items/custom/guidebook
execute if score <value_in_section> variable matches 9 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_online_player_head
execute if score <value_in_section> variable matches 10 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_own_head
execute if score <value_in_section> variable matches 11 store success score <has_given> variable at @s summon minecraft:shulker run data merge entity @s {Tags: ["unnatural"], Color: 16b}
execute if score <value_in_section> variable matches 12 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_caves_and_cliffs_loot_bag
execute if score <value_in_section> variable matches 13 store success score <has_given> variable run loot give @s loot pandamium:items/custom/bedrock_breaker
execute if score <value_in_section> variable matches 14 store success score <has_given> variable at @s summon minecraft:zombie_horse run data merge entity @s {Tags: ["unnatural"], Tame:1b}
execute if score <value_in_section> variable matches 15 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_wild_loot_bag
execute if score <value_in_section> variable matches 16 store success score <has_given> variable run give @s enchanted_book[minecraft:stored_enchantments={"minecraft:swift_sneak":5}]
execute if score <value_in_section> variable matches 17 store success score <has_given> variable run give @s stick[minecraft:enchantments={"minecraft:knockback":5},custom_name="Bonk Stick"]
execute if score <value_in_section> variable matches 21 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_trails_and_tales_loot_bag
execute if score <value_in_section> variable matches 22 store success score <has_given> variable run give @s crafter
execute if score <value_in_section> variable matches 23 store success score <has_given> variable at @s summon minecraft:breeze run data merge entity @s {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 24 store success score <has_given> variable run loot give @s loot pandamium:items/custom/dwarven_potion
execute if score <value_in_section> variable matches 25 store success score <has_given> variable run loot give @s loot pandamium:rewards_shop/creaking_summoning_statue
execute if score <value_in_section> variable matches 26 store success score <has_given> variable run give @s wind_charge 16
execute if score <value_in_section> variable matches 27 store success score <has_given> variable run loot give @s loot pandamium:loot_bundle/the_garden_awakens
execute if score <value_in_section> variable matches 28 store success score <has_given> variable at @s summon minecraft:bogged run data merge entity @s {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 29 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_pale_garden_compass
execute if score <value_in_section> variable matches 30 store success score <has_given> variable run give @s mace
execute if score <value_in_section> variable matches 31 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_ominous_bottle
execute if score <value_in_section> variable matches 32 store success score <has_given> variable run function pandamium:triggers/vote_shop/purchase/give_random_1_21_potion
execute if score <value_in_section> variable matches 33 store success score <has_given> variable run give @s name_tag
execute if score <value_in_section> variable matches 34 store success score <has_given> variable run give @s writable_book
execute if score <value_in_section> variable matches 35 store success score <has_given> variable run give @s music_disc_creator_music_box
execute if score <value_in_section> variable matches 36 store success score <has_given> variable run give @s music_disc_precipice
execute if score <value_in_section> variable matches 37 store success score <has_given> variable run give @s music_disc_creator
execute if score <value_in_section> variable matches 38 store success score <has_given> variable run loot give @s loot pandamium:loot_bundle/spring_to_life
execute if score <value_in_section> variable matches 39 store success score <has_given> variable run give @s music_disc_tears
execute if score <value_in_section> variable matches 40 store success score <has_given> variable run give @s dried_ghast
execute if score <value_in_section> variable matches 41 store success score <has_given> variable run give @s minecraft:painting[minecraft:painting/variant="dennis"]
execute if score <value_in_section> variable matches 42 store success score <has_given> variable run give @s minecraft:music_disc_lava_chicken

execute if score <value_in_section> variable matches 50 store success score <has_given> variable run give @s lapis_lazuli 24
