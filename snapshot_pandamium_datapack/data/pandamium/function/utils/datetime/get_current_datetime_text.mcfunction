# outputs:
# - storage pandamium:temp datetime_text.time
# - storage pandamium:temp datetime_text.date
# - storage pandamium:temp datetime_text.date_time
# - storage pandamium:temp datetime_text.date_time_clock
# - storage pandamium:global datetime_text.date
# - storage pandamium:global datetime_text.time
# - storage pandamium:global datetime_text.full_time
# - storage pandamium:global datetime_text.date_time
# - storage pandamium:global datetime_text.date_time_clock

function pandamium:utils/datetime/get_current_datetime_id
execute if score <last_datetime_text_datetime> global = <datetime_id> variable run data modify storage pandamium:temp datetime_text set from storage pandamium:global datetime_text
execute if score <last_datetime_text_datetime> global = <datetime_id> variable run return 1

scoreboard players reset <month_padding> variable
execute if score <month> global matches 0..9 run scoreboard players set <month_padding> variable 0
scoreboard players reset <day_padding> variable
execute if score <day> global matches 0..9 run scoreboard players set <day_padding> variable 0
scoreboard players reset <hour_padding> variable
execute if score <hour> global matches 0..9 run scoreboard players set <hour_padding> variable 0
scoreboard players reset <minute_padding> variable
execute if score <precise_minute> global matches 0..9 run scoreboard players set <minute_padding> variable 0
scoreboard players reset <second_padding> variable
execute if score <precise_second> global matches 0..9 run scoreboard players set <second_padding> variable 0
scoreboard players operation <12_hour_time_hour> variable = <hour> global
scoreboard players remove <12_hour_time_hour> variable 1
scoreboard players operation <12_hour_time_hour> variable %= #12 constant
scoreboard players add <12_hour_time_hour> variable 1

execute in pandamium:staff_world positioned 0. 0 0. summon marker if function pandamium:utils/discard_marker run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[\
    {\
        translate: "pandamium.date_format",\
        fallback: "%1$s/%2$s/%3$s",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"global"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"global"}}],\
            {score:{name:"<year>",objective:"global"}}\
        ]\
    },\
    {\
        translate: "pandamium.time_format",\
        fallback: "%1$s:%2$s UTC",\
        with: [\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"global"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<precise_minute>",objective:"global"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<precise_second>",objective:"global"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:global",nbt:"meridiem"}\
        ]\
    },\
    {\
        translate: "pandamium.full_time_format",\
        fallback: "%1$s:%2$s:%3$s UTC",\
        with: [\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"global"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<precise_minute>",objective:"global"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<precise_second>",objective:"global"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:global",nbt:"meridiem"}\
        ]\
    },\
    {\
        translate: "pandamium.date_time_format",\
        fallback: "%1$s/%2$s/%3$s at %4$s:%5$s UTC",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"global"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"global"}}],\
            {score:{name:"<year>",objective:"global"}},\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"global"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<precise_minute>",objective:"global"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<precise_second>",objective:"global"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:global",nbt:"meridiem"}\
        ]\
    },\
    {\
        translate: "pandamium.date_time_format.clock_actionbar",\
        fallback: "sᴇʀᴠᴇʀ ᴛɪᴍᴇ %4$s:%5$s (ᴜᴛᴄ)",\
        with: [\
            [{score:{name:"<day_padding>",objective:"variable"}},{score:{name:"<day>",objective:"global"}}],\
            [{score:{name:"<month_padding>",objective:"variable"}},{score:{name:"<month>",objective:"global"}}],\
            {score:{name:"<year>",objective:"global"}},\
            [{score:{name:"<hour_padding>",objective:"variable"}},{score:{name:"<hour>",objective:"global"}}],\
            [{score:{name:"<minute_padding>",objective:"variable"}},{score:{name:"<precise_minute>",objective:"global"}}],\
            [{score:{name:"<second_padding>",objective:"variable"}},{score:{name:"<precise_second>",objective:"global"}}],\
            {score:{name:"<12_hour_time_hour>",objective:"variable"}},\
            {storage:"pandamium:global",nbt:"meridiem"}\
        ]\
    }\
]}]}

execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data set from block 5 0 0 item.components.minecraft:lore

data modify storage pandamium:global datetime_text.date set from storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data[0]
data modify storage pandamium:global datetime_text.time set from storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data[1]
data modify storage pandamium:global datetime_text.full_time set from storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data[2]
data modify storage pandamium:global datetime_text.date_time set from storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data[3]
data modify storage pandamium:global datetime_text.date_time_clock set from storage pandamium:local functions."pandamium:utils/datetime/get_current_datetime_text".data[4]

data modify storage pandamium:temp datetime_text set from storage pandamium:global datetime_text

return 1
