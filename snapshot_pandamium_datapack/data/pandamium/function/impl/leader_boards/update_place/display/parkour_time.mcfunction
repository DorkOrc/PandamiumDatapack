# inputs:
# - score <value> variable

scoreboard players operation <hours> variable = <value> variable
scoreboard players operation <hours> variable /= #ticks_per_hour constant

scoreboard players operation <minutes> variable = <value> variable
scoreboard players operation <minutes> variable /= #ticks_per_minute constant
scoreboard players operation <minutes> variable %= #minutes_per_hour constant
scoreboard players reset <minutes_padding> variable
execute if score <hour> variable matches 0..9 run scoreboard players set <minutes_padding> variable 0

scoreboard players operation <seconds> variable = <value> variable
scoreboard players operation <seconds> variable /= #ticks_per_second constant
scoreboard players operation <seconds> variable %= #seconds_per_minute constant
scoreboard players reset <seconds_padding> variable
execute if score <value> variable >= #ticks_per_minute constant if score <seconds> variable matches 0..9 run scoreboard players set <seconds_padding> variable 0

data modify storage pandamium:text input set value [{color:"green",text:""},{bold:true,score:{name:"<seconds_padding>",objective:"variable"},extra:[{score:{name:"<seconds>",objective:"variable"}}]},{color:"dark_green",text:"."}]
execute if score <value> variable >= #ticks_per_minute constant run data modify storage pandamium:text input insert 1 value {bold:true,score:{name:"<minutes_padding>",objective:"variable"},extra:[{score:{name:"<minutes>",objective:"variable"}},{bold:false,text:":"}]}
execute if score <value> variable >= #ticks_per_hour constant run data modify storage pandamium:text input insert 1 value {bold:true,score:{name:"<hours>",objective:"variable"},extra:[{bold:false,text:":"}]}

scoreboard players operation <centiseconds> variable = <value> variable
scoreboard players operation <centiseconds> variable %= #ticks_per_second constant
execute store result score <digit_0> variable store result score <digit_1> variable run scoreboard players operation <centiseconds> variable *= #5 constant
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/display/parkour_time".value int 1 run scoreboard players operation <digit_0> variable /= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/display/parkour_time"
data modify storage pandamium:text input[-1].extra append from storage pandamium:temp subscript_digit
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/display/parkour_time".value int 1 run scoreboard players operation <digit_1> variable %= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/display/parkour_time"
data modify storage pandamium:text input[-1].extra append from storage pandamium:temp subscript_digit

execute if score <value> variable < #ticks_per_minute constant run data modify storage pandamium:text input append value " seconds"

function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.display set from storage pandamium:text input
