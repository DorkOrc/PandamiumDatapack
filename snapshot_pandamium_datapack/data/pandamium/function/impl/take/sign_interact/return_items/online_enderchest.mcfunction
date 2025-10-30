# move enderchest to box-2 
data modify block 2 1 0 Items set from entity @s EnderItems

# copy each slot from box-1 to box-2 if possible
execute store success score <moved_item> variable unless items block 2 1 0 container.0 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.0 from block 2 0 0 container.0
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.0 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.1 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.1 from block 2 0 0 container.1
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.1 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.2 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.2 from block 2 0 0 container.2
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.2 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.3 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.3 from block 2 0 0 container.3
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.3 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.4 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.4 from block 2 0 0 container.4
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.4 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.5 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.5 from block 2 0 0 container.5
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.5 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.6 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.6 from block 2 0 0 container.6
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.6 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.7 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.7 from block 2 0 0 container.7
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.7 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.8 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.8 from block 2 0 0 container.8
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.8 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.9 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.9 from block 2 0 0 container.9
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.9 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.10 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.10 from block 2 0 0 container.10
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.10 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.11 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.11 from block 2 0 0 container.11
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.11 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.12 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.12 from block 2 0 0 container.12
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.12 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.13 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.13 from block 2 0 0 container.13
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.13 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.14 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.14 from block 2 0 0 container.14
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.14 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.15 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.15 from block 2 0 0 container.15
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.15 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.16 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.16 from block 2 0 0 container.16
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.16 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.17 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.17 from block 2 0 0 container.17
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.17 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.18 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.18 from block 2 0 0 container.18
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.18 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.19 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.19 from block 2 0 0 container.19
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.19 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.20 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.20 from block 2 0 0 container.20
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.20 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.21 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.21 from block 2 0 0 container.21
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.21 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.22 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.22 from block 2 0 0 container.22
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.22 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.23 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.23 from block 2 0 0 container.23
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.23 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.24 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.24 from block 2 0 0 container.24
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.24 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.25 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.25 from block 2 0 0 container.25
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.25 with air
execute store success score <moved_item> variable unless items block 2 1 0 container.26 *
execute if score <moved_item> variable matches 1 run item replace block 2 1 0 container.26 from block 2 0 0 container.26
execute if score <moved_item> variable matches 1 run item replace block 2 0 0 container.26 with air

# if there are no more items left in box-1, copy box-2 into the player's enderchest
execute unless items block 2 0 0 container.* * run return run function pandamium:impl/take/sign_interact/return_items/replace_enderchest_with_box2

# count the remaining slots in box-1 and box-2
execute store result score <filled_box1_slots> variable if data block 2 0 0 Items[]
execute store result score <filled_box2_slots> variable if data block 2 1 0 Items[]
scoreboard players set <empty_box2_slots> variable 27
scoreboard players operation <empty_box2_slots> variable -= <filled_box2_slots> variable

# if there is no more space left in box-2, copy box-2 into the player's enderchest and mail the player a bundle filled with the remaining items from box-1
execute if score <empty_box2_slots> variable matches 0 run function pandamium:impl/take/sign_interact/return_items/replace_enderchest_with_box2
execute if score <empty_box2_slots> variable matches 0 run loot replace block 2 1 0 container.0 27 loot pandamium:intentionally_empty
execute if score <empty_box2_slots> variable matches 0 run return run function pandamium:impl/take/sign_interact/return_items/offline

# if there is sufficient room to dump all remaining items from box-1 into box-2, do so
execute if score <filled_box1_slots> variable <= <empty_box2_slots> variable run loot insert 2 1 0 mine 2 0 0 barrier[custom_data={drop_contents:true}]
execute if score <filled_box1_slots> variable <= <empty_box2_slots> variable run return run function pandamium:impl/take/sign_interact/return_items/replace_enderchest_with_box2

# otherwise, insert a bundle filled with the remaining items from box-1 into box-2, and copy box-2 into the player's enderchest
item replace block 5 0 0 contents with minecraft:bundle
data modify block 5 0 0 item.components.minecraft:bundle_contents append from block 2 0 0 Items[]
loot replace block 2 0 0 container.0 27 loot pandamium:intentionally_empty
item replace block 2 0 0 container.0 from block 5 0 0 contents
loot insert 2 1 0 mine 2 0 0 barrier[custom_data={drop_contents:true}]
function pandamium:impl/take/sign_interact/return_items/replace_enderchest_with_box2
