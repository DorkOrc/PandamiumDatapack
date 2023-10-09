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
execute if score <value_in_section> variable matches 11 store success score <has_given> variable at @s run summon shulker ~ ~ ~ {Color:16b}
execute if score <value_in_section> variable matches 12 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_caves_and_cliffs_loot_bag
execute if score <value_in_section> variable matches 13 run scoreboard players set <has_given> variable 1
execute if score <value_in_section> variable matches 14 store success score <has_given> variable at @s run summon zombie_horse ~ ~ ~ {Tame:1b}
execute if score <value_in_section> variable matches 15 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_wild_loot_bag
execute if score <value_in_section> variable matches 16 store success score <has_given> variable run give @s enchanted_book{StoredEnchantments:[{id:'minecraft:swift_sneak',lvl:3s}]}
execute if score <value_in_section> variable matches 17 store success score <has_given> variable run give @s stick{Enchantments:[{id:'minecraft:knockback',lvl:5s}]}
execute if score <value_in_section> variable matches 21 store success score <has_given> variable in pandamium:staff_world run function pandamium:triggers/vote_shop/purchase/give_trails_and_tales_loot_bag
execute if score <value_in_section> variable matches 22 store success score <has_given> variable run give @s player_head{SkullOwner:{Name:"§lCrab§0§r",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQ5NTc0ZGNlMzc0OGIwNjI2ODU3ZDM1YjE3YjJmMDNmNzAxOTViNTBkNjgxNmVjNmFjZDg5NDU4MTNjYjY2MSJ9fX0="}]},Id:[I;-128015807,-1837020214,-1413469674,-378962613]}}
execute if score <value_in_section> variable matches 23 store success score <has_given> variable run give @s player_head{SkullOwner:{Name:"§lArmadillo§0§r",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjExOTdhZjU5MzBlNWRjOWVkZTJiOTk4OTU2NWFjZmZlNjU3MjEzZTk3NDcwNTdlM2ZhZjdiMTJmODhhNjg3YyJ9fX0="}]},Id:[I;-103712744,1565802655,-1268111634,-1754311172]}}
execute if score <value_in_section> variable matches 24 store success score <has_given> variable run give @s player_head{SkullOwner:{Name:"§lPenguin§0§r",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkyMDM3ZmVlZGY0YzExZmFiOGU0MTc3YjVmNzYxZTc5ZDBmZmJlYzQ2ZmEwZWIxZGJlOTExM2JhZTEyZDViYyJ9fX0="}]},Id:[I;-693467029,-36680774,-1481786585,-1207801791]}}
execute if score <value_in_section> variable matches 50 store success score <has_given> variable run give @s lapis_lazuli 24
