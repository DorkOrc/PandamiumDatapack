# arguments: hour, minute, second

$title @a[predicate=pandamium:holding/clock] actionbar ["",{"text":"sᴇʀᴠᴇʀ ᴛɪᴍᴇ ᴢᴏɴᴇ","color":"dark_aqua"}," $(hour):$(minute):$(second) ",{"text":"(ɢᴍᴛ)","color":"dark_aqua"}]
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

$title @a[scores={send_extra_debug_info=2..},predicate=pandamium:holding/clock] actionbar ["",{"text":"ᴘʀᴇᴄɪsᴇ","color":"dark_aqua"}," $(hour):$(minute):$(second) ",{"text":"ʀᴄᴏɴ","color":"dark_aqua"}," ",{"score":{"name":"<day>","objective":"global"}},"/",{"score":{"name":"<month>","objective":"global"}},"/",{"score":{"name":"<year>","objective":"global"}}," ",{"score":{"name":"<hour>","objective":"global"}},"h ",{"text":"ᴇsᴛɪᴍᴀᴛᴇ","color":"dark_aqua"}," ??:",{"storage":"pandamium:temp","nbt":"parts[0]"},{"storage":"pandamium:temp","nbt":"time[2]"},":",{"storage":"pandamium:temp","nbt":"parts[1]"},{"storage":"pandamium:temp","nbt":"time[1]"},[{"text":".","color":"gray"},{"storage":"pandamium:temp","nbt":"parts[2]"},{"storage":"pandamium:temp","nbt":"parts[3]"}]]
