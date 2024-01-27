# arguments: hour, minute, second

# update precise time global variables
$scoreboard players set <precise_hour> global $(hour)
$scoreboard players set <precise_minute> global $(minute)
$scoreboard players set <precise_second> global $(second)

scoreboard players operation <next_hour> variable = <hour> global
scoreboard players add <next_hour> variable 1
execute if score <next_hour> variable matches 24 run scoreboard players set <next_hour> variable 0
$title @a[scores={send_extra_debug_info=2..},predicate=pandamium:holding/clock] actionbar ["",{"text":"ᴘʀᴇᴄɪsᴇ","color":"dark_aqua"}," $(hour):$(minute):$(second) ",{"text":"ʀᴄᴏɴ","color":"dark_aqua"}," ",{"score":{"name":"<day>","objective":"global"}},"/",{"score":{"name":"<month>","objective":"global"}},"/",{"score":{"name":"<year>","objective":"global"}}," between ",{"score":{"name":"<hour>","objective":"global"}},":00 and ",{"score":{"name":"<next_hour>","objective":"variable"}},":00"]

# approxmiate lag since rcon time update
scoreboard players operation <expected_tick_since_rcon_time_update> variable = <precise_minute> global
scoreboard players remove <expected_tick_since_rcon_time_update> variable 10
execute if score <expected_tick_since_rcon_time_update> variable matches ..-1 run scoreboard players add <expected_tick_since_rcon_time_update> variable 60
scoreboard players operation <expected_tick_since_rcon_time_update> variable *= #seconds_per_minute constant
scoreboard players operation <expected_tick_since_rcon_time_update> variable += <precise_second> global
execute store result score <approximate_lag_since_rcon_time_update> variable run scoreboard players operation <expected_tick_since_rcon_time_update> variable *= #ticks_per_second constant
scoreboard players operation <approximate_lag_since_rcon_time_update> variable -= <ticks_since_rcon_time_update> global
execute if score <approximate_lag_since_rcon_time_update> variable matches ..-1 run scoreboard players set <approximate_lag_since_rcon_time_update> variable 0

execute if score <approximate_lag_since_rcon_time_update> variable > <approximate_lag_since_rcon_time_update> global run tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Approximate lag since rcon time update increased to ","color":"gray","italic":true},{"score":{"name":"<approximate_lag_since_rcon_time_update>","objective":"variable"}}," ticks]"]
scoreboard players operation <approximate_lag_since_rcon_time_update> global = <approximate_lag_since_rcon_time_update> variable

# if rcon time (<hour>) is behind precise time (<precise_hour>) then do the time update immediately
scoreboard players set <do_time_change> variable 0
execute if score <hour> global < <precise_hour> global run scoreboard players set <do_time_change> variable 1
execute if score <hour> global matches 23 if score <precise_hour> global matches 0 run scoreboard players set <do_time_change> variable 1
execute if score <do_time_change> variable matches 0 run return 0

# on hour increase
scoreboard players add <hour> global 1
execute unless score <hour> global matches 24.. run return run function pandamium:misc/on_time_change

# on day increase
scoreboard players set <hour> global 0
scoreboard players add <day> global 1

scoreboard players set <expected_days_this_month> variable 30
execute unless score <month> global matches 4 unless score <month> global matches 6 unless score <month> global matches 9 unless score <month> global matches 11 run scoreboard players set <expected_days_this_month> variable 31
scoreboard players operation <leap_year_modulo> variable = <month> global
scoreboard players operation <leap_year_modulo> variable %= #4 constant
execute if score <month> global matches 2 if score <leap_year_modulo> variable matches 0 run scoreboard players set <expected_days_this_month> variable 29
execute if score <month> global matches 2 unless score <leap_year_modulo> variable matches 0 run scoreboard players set <expected_days_this_month> variable 28

execute unless score <day> global > <expected_days_this_month> variable run return run function pandamium:misc/on_time_change

# on month increase
scoreboard players set <day> global 1
scoreboard players add <month> global 1

execute unless score <month> global matches 13.. run return run function pandamium:misc/on_time_change

# on year increase
scoreboard players set <month> global 1
scoreboard players add <year> global 1
function pandamium:misc/on_time_change
