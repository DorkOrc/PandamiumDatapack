execute if score @s respawn matches 1.. run function pandamium:triggers/respawn
execute if score @s options matches 1.. run function pandamium:triggers/options
execute if score @s options matches ..-1 run function pandamium:triggers/options
execute if score @s vote matches 1.. run function pandamium:triggers/vote
execute if score @s vote_shop matches 1.. run function pandamium:triggers/vote_shop
execute if score @s vote_shop matches ..-1 run function pandamium:triggers/vote_shop
execute if score @s discord matches 1.. run function pandamium:triggers/discord
execute if score @s sethome matches 1.. run function pandamium:triggers/sethome
execute if score @s sethome matches ..-1 run function pandamium:triggers/sethome
execute if score @s delhome matches 1.. run function pandamium:triggers/delhome
execute if score @s delhome matches ..-1 run function pandamium:triggers/delhome
execute if score @s playtime matches 1.. run function pandamium:triggers/playtime
execute if score @s staff_menu matches 1.. run function pandamium:triggers/staff_menu
execute if score @s jail matches 1.. run function pandamium:triggers/jail
execute if score @s jail matches ..-1 run function pandamium:triggers/jail
execute if score @s unjail matches 1.. run function pandamium:triggers/unjail
execute if score @s kick matches 1.. run function pandamium:triggers/kick
execute if score @s kick matches ..-1 run function pandamium:triggers/kick
execute if score @s ban matches 1.. run function pandamium:triggers/ban
execute if score @s restart matches 1.. run function pandamium:triggers/restart
execute if score @s restart matches ..-1 run function pandamium:triggers/restart
execute if score @s toggle_spectator matches 1.. run function pandamium:triggers/toggle_spectator
execute if score @s inventory matches 1.. run function pandamium:triggers/inventory
execute if score @s inventory matches ..-1 run function pandamium:triggers/inventory_slots
execute if score @s enderchest matches 1.. run function pandamium:triggers/enderchest
execute if score @s enderchest matches ..-1 run function pandamium:triggers/enderchest_slots
execute if score @s item_clear matches 1.. run function pandamium:triggers/item_clear
execute if score @s item_clear matches ..-1 run function pandamium:triggers/item_clear
execute if score @s get_guidebook matches 1.. run function pandamium:triggers/get_guidebook
execute if score @s particles matches 1.. run function pandamium:triggers/particles
execute if score @s particles matches ..-1 run function pandamium:triggers/particles
execute if score @s tpa matches 1.. run function pandamium:triggers/tpa
execute if score @s homes matches 1.. run function pandamium:triggers/homes
execute if score @s donator_area matches 1.. run function pandamium:triggers/donator_area
execute if score @s spawnpoint matches 1.. run function pandamium:triggers/spawnpoint
execute if score @s leaderboards matches 1.. run function pandamium:triggers/leaderboards
execute if score @s leaderboards matches ..-1 run function pandamium:triggers/leaderboards
execute if score @s pose matches 1.. at @s run function pandamium:triggers/pose
execute if score @s pose matches ..-1 at @s run function pandamium:triggers/pose
execute if score @s frame_visibility matches 1.. at @s run function pandamium:triggers/frame_visibility
execute if score @s take_ec matches 1.. in pandamium:staff_world run function pandamium:triggers/take_ec
execute if score @s take_inv matches 1.. in pandamium:staff_world run function pandamium:triggers/take_inv
execute if score @s take_binding matches 1.. in pandamium:staff_world run function pandamium:triggers/take_binding
execute if score @s clear matches 1.. run function pandamium:triggers/clear
execute if score @s clear matches ..-1 run function pandamium:triggers/clear
execute if score @s hat matches 1.. in pandamium:staff_world run function pandamium:triggers/hat
execute if score @s item_font matches 1.. in pandamium:staff_world run function pandamium:triggers/item_font
execute if score @s item_font matches ..-1 in pandamium:staff_world run function pandamium:triggers/item_font
execute if score @s sign_font matches 1.. at @s run function pandamium:triggers/sign_font
execute if score @s sign_font matches ..-1 at @s run function pandamium:triggers/sign_font
execute if score @s world_info matches 1.. run function pandamium:triggers/world_info
execute if score @s player_info matches 1.. run function pandamium:triggers/player_info
execute if score @s player_info matches ..-1 run function pandamium:triggers/player_info
execute if score @s container matches 1.. run function pandamium:triggers/container
execute if score @s hide matches 1.. run function pandamium:triggers/hide
execute if score @s auto_jails matches 1.. run function pandamium:triggers/auto_jails
execute if score @s switch_dimension matches 1.. run function pandamium:triggers/switch_dimension
# Temporary
execute if score @s save_mob.spawn matches 1.. at @s run function pandamium:triggers/save_mob/spawn

# Teleporting Triggers
execute if score @s home matches 1.. run function pandamium:triggers/home
execute if score @s spawn matches 1.. run function pandamium:triggers/spawn
execute if score @s spawn matches ..-1 run function pandamium:triggers/spawn
execute if score @s pre_jail_tp matches 1.. run function pandamium:triggers/pre_jail_tp
execute if score @s tpa matches ..-1 run function pandamium:triggers/tpa_function
execute if score @s homes matches ..-1 run function pandamium:triggers/force_tp_homes
execute if score @s spawnpoint matches ..-1 run function pandamium:triggers/force_tp_spawnpoint
execute if score @s tp matches 1.. run function pandamium:triggers/tp
execute if score @s tp matches ..-1 run function pandamium:triggers/tp
execute if score @s auto_jails matches ..-1 run function pandamium:triggers/auto_jails
execute if score @s switch_dimension matches ..-1 run function pandamium:triggers/switch_dimension
execute if score @s staff_world matches 1.. run function pandamium:triggers/staff_world
execute if score @s parkour matches 1.. run function pandamium:triggers/parkour/checkpoint
execute if score @s parkour.end matches 1.. run function pandamium:triggers/parkour/end
