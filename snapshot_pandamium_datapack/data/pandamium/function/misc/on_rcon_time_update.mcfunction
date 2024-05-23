# Gets ran by an external program at 10 minutes past every hour, after the global time variables are updated

# store gametime on hour change
execute store result score <last_rcon_time_update_gametime> global run time query gametime

# reset
scoreboard players set <ticks_behind> variable 72000
execute store result storage pandamium:temp seconds_behind float 0.05 run scoreboard players operation <ticks_behind> variable -= <ticks_since_rcon_time_update> global
data modify storage pandamium:temp seconds_behind set string storage pandamium:temp seconds_behind 0 -1
tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Time estimation was ","color":"gray","italic":true},{"storage":"pandamium:temp","nbt":"seconds_behind"}," seconds behind since the last RCON time change]"]

scoreboard players set <ticks_since_rcon_time_update> global 0
scoreboard players set <approximate_lag_since_rcon_time_update> global 0

function pandamium:misc/on_time_change
