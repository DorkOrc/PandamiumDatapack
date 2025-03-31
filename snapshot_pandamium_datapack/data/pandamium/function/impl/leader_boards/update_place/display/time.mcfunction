# inputs:
# - score <value> variable

scoreboard players operation <hours> variable = <value> variable
scoreboard players operation <hours> variable /= #ticks_per_hour constant

scoreboard players operation <minutes> variable = <value> variable
scoreboard players operation <minutes> variable /= #ticks_per_minute constant
scoreboard players operation <minutes> variable %= #minutes_per_hour constant

data modify storage pandamium:text input set value [{color:"green",text:""},{bold:true,score:{name:"<hours>",objective:"variable"}},"h, ",{bold:true,score:{name:"<minutes>",objective:"variable"}},"m"]
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.display set from storage pandamium:text input
