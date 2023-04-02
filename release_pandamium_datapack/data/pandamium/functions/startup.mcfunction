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
scoreboard players set #16 constant 16
scoreboard players set #32 constant 32
scoreboard players set #100 constant 100

# Start Main Loop
function pandamium:main_loop
