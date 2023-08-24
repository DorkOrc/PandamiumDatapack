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

scoreboard objectives add disable_donator_migration_notice trigger

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

# Dictionary
data modify storage pandamium:dictionary font.menu.custom_fonts.info set value '["This feature is currently a work\\nin progress and is not directly\\ncompatible with regular colours.\\nYou will have to pick the ",{"text":"Reset","bold":true},"\\nfont to pick a solid colour\\nagain."]'
data modify storage pandamium:dictionary font.menu.custom_fonts.rainbow.button set value '[{"color":"#FF0000","text":"["},{"color":"#FF9F00","text":"R"},{"color":"#BFFF00","text":"a"},{"color":"#1FFF00","text":"i"},{"color":"#00FF7F","text":"n"},{"color":"#00DFFF","text":"b"},{"color":"#003FFF","text":"o"},{"color":"#5F00FF","text":"w"},{"color":"#FF00FF","text":"]"}]'
data modify storage pandamium:dictionary font.menu.custom_fonts.rainbow.hover_event set value '[{"color":"#FF0000","text":"C"},{"color":"#FF1F00","text":"l"},{"color":"#FF4F00","text":"i"},{"color":"#FF6F00","text":"c"},{"color":"#FF9F00","text":"k"},{"color":"#FFBF00","text":" "},{"color":"#FFEF00","text":"t"},{"color":"#EFFF00","text":"o"},{"color":"#BFFF00","text":" "},{"color":"#9FFF00","text":"p"},{"color":"#6FFF00","text":"i"},{"color":"#4FFF00","text":"c"},{"color":"#1FFF00","text":"k"},{"color":"#00FF00","text":" "},{"color":"#00FF2F","text":"c"},{"color":"#00FF4F","text":"u"},{"color":"#00FF7F","text":"s"},{"color":"#00FF9F","text":"t"},{"color":"#00FFCF","text":"o"},{"color":"#00FFEF","text":"m"},{"color":"#00DFFF","text":" "},{"color":"#00BFFF","text":"f"},{"color":"#008FFF","text":"o"},{"color":"#006FFF","text":"n"},{"color":"#003FFF","text":"t"},{"color":"#001FFF","text":" "},[{"text":"","bold":true},{"color":"#0F00FF","text":"R"},{"color":"#2F00FF","text":"a"},{"color":"#5F00FF","text":"i"},{"color":"#7F00FF","text":"n"},{"color":"#AF00FF","text":"b"},{"color":"#CF00FF","text":"o"},{"color":"#FF00FF","text":"w"}]]'
data modify storage pandamium:dictionary font.menu.custom_gradients_page.button set value '{"text":"[Custom Gradients]","color":"white"}'
data modify storage pandamium:dictionary font.menu.custom_gradients_page.hover_event set value '[{"text":"Click to see ","color":"white"},{"text":"Custom Gradients","bold":true}]'

# Start Main Loop
function pandamium:main_loop
