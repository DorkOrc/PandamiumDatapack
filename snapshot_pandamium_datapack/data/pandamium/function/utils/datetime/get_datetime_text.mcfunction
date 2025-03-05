# arguments: args
# inputs:
# - args (= list[]|compound)
# or
# - score <year> variable
# - score <month> variable
# - score <day> variable
# - score <hour> variable
# - score <minute> variable
# - score <second> variable
# outputs:
# - storage pandamium:temp datetime_text.date
# - storage pandamium:temp datetime_text.time
# - storage pandamium:temp datetime_text.full_time
# - storage pandamium:temp datetime_text.date_time
# - storage pandamium:temp datetime_text.date_time_clock

data remove storage pandamium:temp datetime_text

$data modify storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args set value $(args)
execute unless function pandamium:impl/datetime/get_datetime_text/unpack_arguments run return fail

scoreboard players reset <month_padding> variable
execute if score <month> variable matches 0..9 run scoreboard players set <month_padding> variable 0
scoreboard players reset <day_padding> variable
execute if score <day> variable matches 0..9 run scoreboard players set <day_padding> variable 0
scoreboard players reset <hour_padding> variable
execute if score <hour> variable matches 0..9 run scoreboard players set <hour_padding> variable 0
scoreboard players reset <minute_padding> variable
execute if score <minute> variable matches 0..9 run scoreboard players set <minute_padding> variable 0
scoreboard players reset <second_padding> variable
execute if score <second> variable matches 0..9 run scoreboard players set <second_padding> variable 0
scoreboard players operation <12_hour_time_hour> variable = <hour> variable
scoreboard players remove <12_hour_time_hour> variable 1
scoreboard players operation <12_hour_time_hour> variable %= #12 constant
scoreboard players add <12_hour_time_hour> variable 1

execute if score <hour> variable matches 0..11 run data modify storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".meridiem set value "am"
execute if score <hour> variable matches 12..23 run data modify storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".meridiem set value "pm"

execute in pandamium:staff_world positioned 0. 0 0. summon marker if function pandamium:utils/discard_marker run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[\
    {\
        translate: "pandamium.date_format",\
        fallback: "%1$s/%2$s/%3$s",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"variable"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"variable"}}],\
            {score:{name:"<year>",objective:"variable"}}\
        ]\
    },\
    {\
        translate: "pandamium.full_time_format",\
        fallback: "%1$s:%2$s:%3$s UTC",\
        with: [\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"variable"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<minute>",objective:"variable"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<second>",objective:"variable"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:local",nbt:'functions."pandamium:utils/datetime/get_datetime_text".meridiem'}\
        ]\
    },\
    {\
        translate: "pandamium.time_format",\
        fallback: "%1$s:%2$s UTC",\
        with: [\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"variable"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<minute>",objective:"variable"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<second>",objective:"variable"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:local",nbt:'functions."pandamium:utils/datetime/get_datetime_text".meridiem'}\
        ]\
    },\
    {\
        translate: "pandamium.date_time_format",\
        fallback: "%1$s/%2$s/%3$s at %4$s:%5$s UTC",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"variable"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"variable"}}],\
            {score:{name:"<year>",objective:"variable"}},\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"variable"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<minute>",objective:"variable"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<second>",objective:"variable"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:local",nbt:'functions."pandamium:utils/datetime/get_datetime_text".meridiem'}\
        ]\
    },\
    {\
        translate: "pandamium.date_time_format.clock_actionbar",\
        fallback: "sᴇʀᴠᴇʀ ᴛɪᴍᴇ %4$s:%5$s:%6$s (ᴜᴛᴄ)",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"variable"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"variable"}}],\
            {score:{name:"<year>",objective:"variable"}},\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"variable"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<precise_minute>",objective:"variable"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<second_minute>",objective:"variable"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:local",nbt:'functions."pandamium:utils/datetime/get_datetime_text".meridiem'}\
        ]\
    }\
]}]}

execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data set from block 5 0 0 item.components.minecraft:lore

data modify storage pandamium:temp datetime_text.date set from storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data[0]
data modify storage pandamium:temp datetime_text.time set from storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data[1]
data modify storage pandamium:temp datetime_text.full_time set from storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data[2]
data modify storage pandamium:temp datetime_text.date_time set from storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data[3]
data modify storage pandamium:temp datetime_text.date_time_clock set from storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".data[4]

return 1
