function pandamium:impl/teams/init_arguments
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get @s id
execute store result storage pandamium:temp arguments.tablist_sort_index int 1 run scoreboard players get @s tablist_sort_index

scoreboard players set <got_rank> variable 0
execute if score @s supporter_rank matches 1 unless score @s disable_donator_prefix matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_purple",prefix:'"Supporter | "'}
execute if score @s vip_rank matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_blue",prefix:'"VIP | "'}
execute if score @s staff_rank matches 1.. unless score @s alt_of matches 1.. run function pandamium:impl/teams/update_base/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/teams/update_base/get_gameplay_rank

# co-owner hover_event for DorkOrc and Sundroid
execute if score @s id matches 532 unless score @s staff_rank matches 5 run data modify storage pandamium:temp arguments.hover_event set value '{"text":"Co-Owner of Pandamium\\n","extra":[{"text":"Shift+Click to insert User ID","color":"gray"}]}'
execute if score @s id matches 4 unless score @s staff_rank matches 5 run data modify storage pandamium:temp arguments.hover_event set value '{"text":"Co-Owner of Pandamium\\n","extra":[{"text":"Shift+Click to insert User ID","color":"gray"}]}'
# light_purple color for __T0m__ and DrexHD
execute if score @s id matches 2 run data modify storage pandamium:temp arguments.color set value 'light_purple'
execute if score @s id matches 61 run data modify storage pandamium:temp arguments.color set value 'light_purple'

function pandamium:impl/teams/update_base with storage pandamium:temp arguments
