function pandamium:impl/teams/init_arguments

execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get @s id

function pandamium:utils/get/username
data modify storage pandamium:temp arguments.username set from storage pandamium:temp username

scoreboard players set <got_rank> variable 0
execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_purple",prefix:'{"text":"Donator | "}'}
execute if score @s vip_rank matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_blue",prefix:'{"text":"VIP | "}'}
execute if score @s staff_rank matches 1.. unless score @s alt_of matches 1.. run function pandamium:impl/teams/update_base/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/teams/update_base/get_gameplay_rank

execute if entity @s[name="DorkOrc"] run data modify storage pandamium:temp arguments.hover_event set value '"(secretly also the co-owner of Pandamium)"'
execute if entity @s[name="_Tec_"] run data modify storage pandamium:temp arguments.color set value 'light_purple'

function pandamium:impl/teams/update_base with storage pandamium:temp arguments
