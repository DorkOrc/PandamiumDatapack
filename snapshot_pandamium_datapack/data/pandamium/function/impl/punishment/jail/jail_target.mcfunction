# arguments: target

# fail if already jailed
$execute if score $(target) jailed matches 1.. run return run function pandamium:utils/log_exception {args:{return:"fail",function:"pandamium:impl/punishment/jail/jail_target",message:"Tried to jail $(target) but they were already jailed."}}

# set jailed
$scoreboard players set $(target) jailed 1
$execute as $(target) run function pandamium:player/update_tablist_value

# store the time
$execute store result score $(target) last_jailed.datetime run function pandamium:utils/datetime/get_current_datetime_id

# store their last position
$execute if score $(target) last_position.x = $(target) last_position.x run scoreboard players operation $(target) pre_jail_pos_x = $(target) last_position.x
$execute if score $(target) last_position.x = $(target) last_position.x run scoreboard players operation $(target) pre_jail_pos_y = $(target) last_position.y
$execute if score $(target) last_position.x = $(target) last_position.x run scoreboard players operation $(target) pre_jail_pos_z = $(target) last_position.z
$execute if score $(target) last_position.x = $(target) last_position.x run scoreboard players operation $(target) pre_jail_pos_d = $(target) last_position.d

# warp to jail
$execute unless entity $(target) run scoreboard players set $(target) on_join.tp_to_spawn 1
$execute as $(target) if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic
$execute as $(target) run gamemode adventure
$execute as $(target) run function pandamium:misc/warp/jail

# take items
$execute unless entity $(target) run scoreboard players set $(target) on_join.take_items 1
scoreboard players set <item_count> variable 0
$execute as $(target) run function pandamium:player/take_items/inventory
scoreboard players operation <total_items_taken> variable += <item_count> variable
$execute as $(target) run function pandamium:player/take_items/enderchest
scoreboard players operation <total_items_taken> variable += <item_count> variable

# inform online player
$tellraw $(target) [{color:"dark_purple",text:"[Private Info]"},{color:"light_purple",text:" You are jailed! Please contact a staff member."}]
$title $(target) subtitle {color:"light_purple",text:"Please contact a staff member."}
$title $(target) title {color:"dark_purple",text:"You are Jailed"}

# success
return 1
