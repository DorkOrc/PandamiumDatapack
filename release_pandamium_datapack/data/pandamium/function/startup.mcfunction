# Scoreboards
scoreboard objectives add id dummy
scoreboard objectives add variable dummy
scoreboard objectives add global dummy
scoreboard objectives add constant dummy

# controlled externally
scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy

# misc
scoreboard objectives add rtp_cooldown dummy
execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> variable 2
scoreboard objectives add font.gradient.left_colour dummy

# Triggers
scoreboard objectives add item_font trigger
scoreboard objectives add sign_font trigger
scoreboard objectives add world_info trigger
scoreboard objectives add rtp trigger

# Detection
scoreboard objectives add detect.leave_game custom:leave_game
scoreboard objectives add detect.use.trident used:trident
scoreboard objectives add detect.use.wet_sponge used:wet_sponge
scoreboard objectives add detect.aviate custom:aviate_one_cm
scoreboard objectives add detect.advancement.on_a_rail custom:minecart_one_cm

# On-Join Events
scoreboard objectives add on_join.tp_to_spawn dummy
scoreboard objectives add on_join.reset_spawnpoint dummy


# Reset Volatile Scoreboards
scoreboard players reset * detect.leave_game
scoreboard players reset * detect.use.trident
scoreboard players reset * detect.use.wet_sponge
scoreboard players reset * detect.aviate
scoreboard players reset * detect.advancement.on_a_rail

scoreboard players reset * rtp_cooldown

scoreboard players reset * item_font
scoreboard players reset * sign_font
scoreboard players reset * world_info
scoreboard players reset * rtp

# Forceload Staff World Platform
execute in pandamium:staff_world run forceload add -1 -1 0 0

# Useful Constants
scoreboard players set #ticks_per_second constant 20
scoreboard players set #-1 constant -1
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #6 constant 6
scoreboard players set #7 constant 7
scoreboard players set #8 constant 8
scoreboard players set #9 constant 9
scoreboard players set #10 constant 10
scoreboard players set #16 constant 16
scoreboard players set #32 constant 32
scoreboard players set #100 constant 100
scoreboard players set #255 constant 255
scoreboard players set #256 constant 256
scoreboard players set #500 constant 500
scoreboard players set #1000 constant 1000
scoreboard players set #65536 constant 65536

# Dictionary
function pandamium:startup/setup_dictionary

# Make sure keepInventory is enabled in the End after the End Reset (because Paper servers are awful)
execute in the_end run gamerule keepInventory true
