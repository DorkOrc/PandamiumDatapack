# run AT @s

execute if score @s spawn = @s spawn unless score @s spawn matches 0 run function pandamium:triggers/spawn
execute if score @s respawn matches 1.. run function pandamium:triggers/respawn
execute if score @s playtime = @s playtime unless score @s playtime matches 0 run function pandamium:triggers/playtime
execute if score @s discord matches 1.. run function pandamium:triggers/discord
execute if score @s options = @s options unless score @s options matches 0 run function pandamium:triggers/options
execute if score @s clear = @s clear unless score @s clear matches 0 run function pandamium:triggers/clear
execute if score @s world_info matches 1.. run function pandamium:triggers/world_info
execute if score @s save_mob.spawn matches 1.. run function pandamium:triggers/save_mob/spawn

execute if score @s vote matches 1.. run function pandamium:triggers/vote
execute if score @s vote_shop = @s vote_shop unless score @s vote_shop matches 0 run function pandamium:triggers/vote_shop
execute if score @s gift matches 1.. run function pandamium:triggers/gift

execute if score @s tpa = @s tpa unless score @s tpa matches 0 run function pandamium:triggers/tpa

execute if score @s sethome = @s sethome unless score @s sethome matches 0 run function pandamium:triggers/sethome
execute if score @s delhome = @s delhome unless score @s delhome matches 0 run function pandamium:triggers/delhome
execute if score @s home matches 1.. run function pandamium:triggers/home
execute if score @s homes matches 1.. run function pandamium:triggers/homes

execute if score @s parkour = @s parkour unless score @s parkour matches 0 run function pandamium:triggers/parkour
execute if score @s parkour.quit matches 1.. run function pandamium:triggers/parkour/quit
execute if score @s parkour.restart = @s parkour.restart unless score @s parkour.restart matches 0 run function pandamium:triggers/parkour/restart

# Donator-only
execute if score @s donator_area matches 1.. run function pandamium:triggers/donator_area
execute if score @s particles = @s particles unless score @s particles matches 0 run function pandamium:triggers/particles
execute if score @s leaderboards = @s leaderboards unless score @s leaderboards matches 0 run function pandamium:triggers/leaderboards
execute if score @s pose = @s pose unless score @s pose matches 0 run function pandamium:triggers/pose
execute if score @s frame_visibility matches 1.. run function pandamium:triggers/frame_visibility
execute if score @s hat matches 1.. run function pandamium:triggers/hat
execute if score @s item_font = @s item_font unless score @s item_font matches 0 in pandamium:staff_world run function pandamium:triggers/item_font
execute if score @s sign_font = @s sign_font unless score @s sign_font matches 0 run function pandamium:triggers/sign_font

# Staff-only
execute if score @s staff_perms matches 1.. run function pandamium:check_staff_triggers
