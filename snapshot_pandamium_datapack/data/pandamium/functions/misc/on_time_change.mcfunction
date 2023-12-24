# Gets ran by an external program at 10 past every hour, after the global time variables are updated

# store gametime on hour change
execute store result score <last_time_change_gametime> global run time query gametime

# update hour index
function pandamium:misc/update_hour_id

# on month start
execute if score <day> global matches 1 if score <hour> global matches 0 run function pandamium:misc/on_month_start

# reset
scoreboard players set <ticks_behind> variable 72000
execute store result storage pandamium:temp seconds_behind float 0.05 run scoreboard players operation <ticks_behind> variable -= <ticks_since_time_change> global
data modify storage pandamium:temp seconds_behind set string storage pandamium:temp seconds_behind 0 -1
tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Time estimation was ","color":"gray","italic":true},{"score":{"name":"<ticks_behind>","objective":"variable"}}," ticks (",{"storage":"pandamium:temp","nbt":"seconds_behind"}," seconds) behind since the last time change]"]
scoreboard players set <ticks_since_time_change> global 0

# event dates
execute if score <month> global matches 12 if score <day> global matches 25 if score <hour> global matches 0 run advancement grant @a only pandamium:pandamium/events/christmas

