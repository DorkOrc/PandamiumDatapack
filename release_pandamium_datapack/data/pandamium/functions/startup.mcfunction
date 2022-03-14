# Scoreboards
scoreboard objectives add id dummy
scoreboard objectives add variable dummy
scoreboard objectives add global dummy

execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> variable 2

scoreboard objectives add detect.leave_game custom:leave_game

#scoreboard objectives add item_font trigger
#scoreboard objectives add sign_font trigger

# Reset Scoreboards
scoreboard players reset * detect.leave_game

#scoreboard players reset * item_font
#scoreboard players reset * sign_font

#

execute in pandamium:staff_world run forceload add -1 -1 0 0

function pandamium:main_loop
