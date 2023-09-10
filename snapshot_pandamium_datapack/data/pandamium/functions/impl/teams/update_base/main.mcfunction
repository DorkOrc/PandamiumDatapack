function pandamium:impl/teams/init_arguments

function pandamium:utils/get_username
data modify storage pandamium:temp arguments.username set from storage pandamium:temp username

scoreboard players set <got_rank> variable 0
execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_purple",prefix:'{"text":"Donator | ","color":"gray"}'}
execute if score @s vip_rank matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_blue",prefix:'{"text":"VIP | ","color":"gray"}'}
execute if score @s staff_rank matches 1.. unless score @s is_staff_alt matches 1.. run function pandamium:impl/teams/update_base/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/teams/update_base/get_gameplay_rank

function pandamium:impl/teams/update_base with storage pandamium:temp arguments
