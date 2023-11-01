# Gets ran by an external program at 10 past every hour, after the global time variables are updated

# store gametime on hour change
execute store result score <last_time_change_gametime> global run time query gametime

# update hour index
function pandamium:misc/update_hour_id

# on month start
execute if score <day> global matches 1 if score <hour> global matches 0 run function pandamium:misc/on_month_start

# reset
scoreboard players operation <ticks_behind> variable = <ticks_since_time_change> global
scoreboard players remove <ticks_behind> variable 72000
tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Running ","color":"gray","italic":true},{"score":{"name":"<ticks_behind>","objective":"variable"}}," ticks behind]"]
scoreboard players set <ticks_since_time_change> global 0
execute if score <reload_data_pack> global matches 1 run schedule function pandamium:misc/reload_data_pack 30s
