# Section -1

execute if score <value_in_section> variable matches 1 store success score <has_given> variable run give @s diamond
execute if score <value_in_section> variable matches 2 store success score <has_given> variable run give @s experience_bottle 5
execute if score <value_in_section> variable matches 3 store success score <has_given> variable run give @s golden_apple
execute if score <value_in_section> variable matches 4 store success score <has_given> variable run give @s endermite_spawn_egg
execute if score <value_in_section> variable matches 5 store success score <has_given> variable run give @s enchanted_book{StoredEnchantments:[{id:'minecraft:mending',lvl:1s}]}
execute if score <value_in_section> variable matches 6 store success score <has_given> variable run give @s enchanted_golden_apple
execute if score <value_in_section> variable matches 7 store success score <has_given> variable run give @s potion{Potion:'minecraft:luck'}
execute if score <value_in_section> variable matches 8 run function pandamium:triggers/vote_shop/purchase/mini_blocks/from_storage/main
execute if score <value_in_section> variable matches 9 store success score <has_given> variable as @r run loot give @a[tag=source,limit=1] loot pandamium:head
execute if score <value_in_section> variable matches 10 store success score <has_given> variable run loot give @s loot pandamium:head
execute if score <value_in_section> variable matches 11 store success score <has_given> variable at @s run summon shulker ~ ~ ~ {Tags: ["unnatural"], Color: 16b}
execute if score <value_in_section> variable matches 12 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_caves_and_cliffs_loot_bag
execute if score <value_in_section> variable matches 13 run scoreboard players set <has_given> variable 1
execute if score <value_in_section> variable matches 14 store success score <has_given> variable at @s run summon zombie_horse ~ ~ ~ {Tags: ["unnatural"], Tame:1b}
execute if score <value_in_section> variable matches 15 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_wild_loot_bag
execute if score <value_in_section> variable matches 16 store success score <has_given> variable run give @s enchanted_book{StoredEnchantments:[{id:'minecraft:swift_sneak',lvl:3s}]}
execute if score <value_in_section> variable matches 17 store success score <has_given> variable run give @s stick{Enchantments:[{id:'minecraft:knockback',lvl:5s}]}
execute if score <value_in_section> variable matches 21 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_trails_and_tales_loot_bag
execute if score <value_in_section> variable matches 22 store success score <has_given> variable run give @s crafter
execute if score <value_in_section> variable matches 23 store success score <has_given> variable at @s run summon breeze ~ ~ ~ {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 24 store success score <has_given> variable run loot give @s loot pandamium:dwarven_potion
execute if score <value_in_section> variable matches 25 store success score <has_given> variable at @s run summon armadillo ~ ~ ~ {Tags: ["unnatural"]}
execute if score <value_in_section> variable matches 50 store success score <has_given> variable run give @s lapis_lazuli 24
