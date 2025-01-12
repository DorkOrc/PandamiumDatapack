title @a[predicate=pandamium:holding/clock] actionbar {color:"dark_aqua",translate:"pandamium.clock_actionbar_template",fallback:"sᴇʀᴠᴇʀ ᴛɪᴍᴇ %s (ɢᴍᴛ)",with:[{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.hour",color:"white",extra:[{text:":"},{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.minute"},{text:":"},{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.second"}]}]}
execute unless entity @a[scores={send_extra_debug_info=2..},predicate=pandamium:holding/clock] run return 0

scoreboard players operation <ticks> variable = <ticks_since_rcon_time_update> global
scoreboard players add <ticks> variable 12000
scoreboard players operation <ticks> variable %= #ticks_per_hour constant
function pandamium:utils/get/time_from_ticks_without_hours

data modify storage pandamium:temp parts set value ["","","₀","₀"]
execute if score <minutes> variable matches 0..9 run data modify storage pandamium:temp parts[0] set value "0"
execute if score <seconds> variable matches 0..9 run data modify storage pandamium:temp parts[1] set value "0"

scoreboard players operation <ticks> variable *= #100 constant
execute store result score <digit_0> variable store result score <digit_1> variable run scoreboard players operation <ticks> variable /= #ticks_per_second constant
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <digit_0> variable /= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:templates macro.value
data modify storage pandamium:temp parts[2] set from storage pandamium:temp subscript_digit
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <digit_1> variable %= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:templates macro.value
data modify storage pandamium:temp parts[3] set from storage pandamium:temp subscript_digit

title @a[scores={send_extra_debug_info=2..},predicate=pandamium:holding/clock] actionbar [{text:""},{text:"ᴘʀᴇᴄɪsᴇ",color:"dark_aqua"},{text:" ",extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.hour",color:"white",extra:[{text:":"},{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.minute"},{text:":"},{storage:"pandamium:local",nbt:"functions.'pandamium:impl/main_loop/get_precise_time'.second"}]},{text:" "}]},{text:"ʀᴄᴏɴ",color:"dark_aqua"},{text:" "},{score:{name:"<day>",objective:"global"}},{text:"/"},{score:{name:"<month>",objective:"global"}},{text:"/"},{score:{name:"<year>",objective:"global"}},{text:" "},{score:{name:"<hour>",objective:"global"}},{text:"h "},{text:"ᴇsᴛɪᴍᴀᴛᴇ",color:"dark_aqua"},{text:" ??:"},{storage:"pandamium:temp",nbt:"parts[0]"},{storage:"pandamium:temp",nbt:"time[2]"},{text:":"},{storage:"pandamium:temp",nbt:"parts[1]"},{storage:"pandamium:temp",nbt:"time[1]"},{text:".",color:"gray",extra:[{storage:"pandamium:temp",nbt:"parts[2]"},{storage:"pandamium:temp",nbt:"parts[3]"}]}]
