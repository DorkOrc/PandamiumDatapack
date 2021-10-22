execute if score @s vote_shop matches -51 run give @s player_head{SkullOwner:{Name:"§lBedrock",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmFmNTA3ODVjYWQ5MWU1ZWJjZDE5YjU3ZWRjZWE4Y2JjZGM1OGYwNmI5MWMxOWVlMTdmYjI0MjJjMTg5MmFkMyJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}
execute if score @s vote_shop matches -52 run give @s player_head{SkullOwner:{Name:"§lEnd Portal Frame",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiYTBkMjdhZGNkZWYxOTA2NTJmZThmNWFhNTg2NzU3N2FhYjkzNTcyNjc5MDc2MjVlMWYzNjU3MDAzZDMxZSJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}
execute if score @s vote_shop matches -53 run give @s player_head{SkullOwner:{Name:"§lMob Spawner",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGViMDdlZWEzODBhZjU4ZGM5MWVlZWUxNWQ5NWQ4NzkwYTA3ODFjNjk1ZWMwYThmZDhmZTMxZDQ4MzljYTU2MiJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}
execute if score @s vote_shop matches -54 run give @s player_head{SkullOwner:{Name:"§lJigsaw",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmIyZGY0NjZhYTllODYyMDUxNTU5MzFmMTQ4MzM3YjliM2NkMDFhZTBmNTNiN2QwMzQ1NjI1Mzc3ZTM1ZWE3NCJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}

execute if score @s vote_shop matches -57 run give @s player_head{SkullOwner:{Name:"§lCreepy Jack O' Lantern",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWI3NmI0Njg2NjU5NDI3YzlhYmU3YmEyMGRmNmMyYTA2MDhhNzc1OWMzMDM5NTFjMTMxNTIxOTY4YWE5YWMzNiJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}
execute if score @s vote_shop matches -58 run give @s player_head{SkullOwner:{Name:"§lCreepy Jack O' Soul Lantern",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBhZDhhNDEwNWY3MDE2NjUzMGVhOTE3YzkxNzcyYTczZTgyYTg5NTVjYTRjYjAwZGE3ZjhlODFhMzJiNDBlZSJ9fX0="}]},Id:[I;-1066432250,1284131089,-1674974691,-1122325630]}}

# Blocks with further options
execute if score @s vote_shop matches -55 run data merge storage pandamium:temp {NBT:{SelectedItem:{id:'minecraft:structure_block'}}}
execute if score @s vote_shop matches -56 run data merge storage pandamium:temp {NBT:{SelectedItem:{id:'minecraft:command_block'}}}
execute if score @s vote_shop matches -56..-55 store success score <conf_message> variable run function pandamium:misc/vote_shop/mini_blocks/alt/prompt

# Only play sound for buying mini-block, not displaying further options
execute unless score <conf_message> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s
