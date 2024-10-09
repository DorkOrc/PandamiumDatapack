scoreboard players set <idle_check_period> variable 5
execute if entity @a[scores={parkour.checkpoint=300..399}] run scoreboard players set <idle_check_period> variable 1
execute if score <idle_check_period> variable matches 5 unless score <5_tick_loop> global matches 0 run return 0

scoreboard players set @a temp_1 0
execute in pandamium:staff_world positioned 0 0 0 summon marker run function pandamium:impl/idle/as_marker
scoreboard players operation @a[scores={last_position.d=-1}] last_position.x /= #8 constant
scoreboard players operation @a[scores={last_position.d=-1}] last_position.z /= #8 constant

scoreboard players operation @a[scores={idle.time=1..}] playtime_ticks -= <idle_check_period> variable
scoreboard players operation @a[scores={idle.time=1..}] monthly_playtime_ticks -= <idle_check_period> variable
scoreboard players operation @a[scores={idle.time=1..}] yearly_playtime_ticks -= <idle_check_period> variable

execute if score <idle_check_period> variable matches 1 as @a[scores={idle.time=1}] unless score @s hidden matches 1.. run function pandamium:player/update_tablist_value
execute if score <idle_check_period> variable matches 5 as @a[scores={idle.time=1..5}] unless score @s hidden matches 1.. run function pandamium:player/update_tablist_value
