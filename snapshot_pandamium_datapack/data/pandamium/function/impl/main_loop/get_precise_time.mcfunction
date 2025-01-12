# arguments: hour, minute, second

# only run when the time actually changes
$scoreboard players set <new_precise_second> variable $(second)
execute if score <new_precise_second> variable = <precise_second> global run return 0

# update precise time global variables
$scoreboard players set <precise_hour> global $(hour)
$scoreboard players set <precise_minute> global $(minute)
scoreboard players operation <precise_second> global = <new_precise_second> variable

execute if entity @a[predicate=pandamium:holding/clock,limit=1] run function pandamium:impl/main_loop/display_debug_clock

# approxmiate lag since rcon time update
scoreboard players operation <expected_ticks_since_rcon_time_update> variable = <precise_minute> global
scoreboard players remove <expected_ticks_since_rcon_time_update> variable 10
execute if score <expected_ticks_since_rcon_time_update> variable matches ..-1 run scoreboard players add <expected_ticks_since_rcon_time_update> variable 60
scoreboard players operation <expected_ticks_since_rcon_time_update> variable *= #seconds_per_minute constant
scoreboard players operation <expected_ticks_since_rcon_time_update> variable += <precise_second> global
scoreboard players operation <expected_ticks_since_rcon_time_update> variable *= #ticks_per_second constant

scoreboard players operation <approximate_lag_since_rcon_time_update> variable = <expected_ticks_since_rcon_time_update> variable
scoreboard players operation <approximate_lag_since_rcon_time_update> variable -= <ticks_since_rcon_time_update> global
execute if score <approximate_lag_since_rcon_time_update> variable matches ..-1 run scoreboard players set <approximate_lag_since_rcon_time_update> variable 0

scoreboard players operation <lag_difference> variable = <approximate_lag_since_rcon_time_update> variable
scoreboard players operation <lag_difference> variable -= <approximate_lag_since_rcon_time_update> global

execute if score <approximate_lag_since_rcon_time_update> variable > <approximate_lag_since_rcon_time_update> global store result storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".seconds_behind float 0.05 run scoreboard players get <approximate_lag_since_rcon_time_update> variable
execute if score <approximate_lag_since_rcon_time_update> variable > <approximate_lag_since_rcon_time_update> global run data modify storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".seconds_behind set string storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".seconds_behind 0 -1
execute if score <approximate_lag_since_rcon_time_update> variable > <approximate_lag_since_rcon_time_update> global run tellraw @a[scores={send_extra_debug_info=2..}] [{text:"[Pandamium: Server slowed by ",color:"gray",italic:true,hover_event:{action:"show_text",text:[{text:"Gametime is now "},{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.seconds_behind"},{text:" seconds behind since the latest RCON time update."}]}},{score:{name:"<lag_difference>",objective:"variable"}},{text:" ticks]"}]
execute if score <approximate_lag_since_rcon_time_update> variable > <approximate_lag_since_rcon_time_update> global run scoreboard players operation @a[scores={parkour.checkpoint=0..}] parkour.timer_ticks += <lag_difference> variable
scoreboard players operation <approximate_lag_since_rcon_time_update> global > <approximate_lag_since_rcon_time_update> variable

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
scoreboard players operation <leap_year_modulo> variable = <year> global
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
