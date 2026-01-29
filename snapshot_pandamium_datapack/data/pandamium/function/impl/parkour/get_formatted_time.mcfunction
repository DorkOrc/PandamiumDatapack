# inputs:
# - score <ticks> variable

function pandamium:utils/get/time_from_ticks_without_days

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

execute if score <hours> variable matches 0 if score <minutes> variable matches 0 run data modify storage do:io input set value [{score:{name:"<seconds>",objective:"variable"},color:"aqua",bold:true},[{text:".",color:"dark_aqua",bold:false},{storage:"pandamium:temp",nbt:"parts[2]",interpret:true},{storage:"pandamium:temp",nbt:"parts[3]",interpret:true}]," seconds"]
execute if score <hours> variable matches 0 if score <minutes> variable matches 1.. run data modify storage do:io input set value [{storage:"pandamium:temp",nbt:"parts[0]",interpret:true,color:"aqua",bold:true},{score:{name:"<minutes>",objective:"variable"}},":",{storage:"pandamium:temp",nbt:"parts[1]",interpret:true},{score:{name:"<seconds>",objective:"variable"}},[{text:".",color:"dark_aqua",bold:false},{storage:"pandamium:temp",nbt:"parts[2]",interpret:true},{storage:"pandamium:temp",nbt:"parts[3]",interpret:true}]]
execute if score <hours> variable matches 1.. run data modify storage do:io input set value [{score:{name:"<hours>",objective:"variable"},color:"aqua",bold:true},":",{storage:"pandamium:temp",nbt:"parts[0]",interpret:true},{score:{name:"<minutes>",objective:"variable"}},":",{storage:"pandamium:temp",nbt:"parts[1]",interpret:true},{score:{name:"<seconds>",objective:"variable"}},[{text:".",color:"dark_aqua",bold:false},{storage:"pandamium:temp",nbt:"parts[2]",interpret:true},{storage:"pandamium:temp",nbt:"parts[3]",interpret:true}]]

function do:text/resolve
data modify storage pandamium:temp formatted_time set from storage do:io output
