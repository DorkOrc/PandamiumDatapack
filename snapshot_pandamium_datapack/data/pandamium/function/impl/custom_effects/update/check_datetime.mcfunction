execute unless data storage pandamium:temp custom_effect_entry.data.duration[0] run return 1
execute store result score <minimum_year> variable run data get storage pandamium:temp custom_effect_entry.data.duration[0]
execute unless score <year> global = <minimum_year> variable run return run execute if score <year> global > <minimum_year> variable

execute unless data storage pandamium:temp custom_effect_entry.data.duration[1] run return 1
execute store result score <minimum_month> variable run data get storage pandamium:temp custom_effect_entry.data.duration[1]
execute unless score <month> global = <minimum_month> variable run return run execute if score <month> global > <minimum_month> variable

execute unless data storage pandamium:temp custom_effect_entry.data.duration[2] run return 1
execute store result score <minimum_day> variable run data get storage pandamium:temp custom_effect_entry.data.duration[2]
execute unless score <day> global = <minimum_day> variable run return run execute if score <day> global > <minimum_day> variable

execute unless data storage pandamium:temp custom_effect_entry.data.duration[3] run return 1
execute store result score <minimum_hour> variable run data get storage pandamium:temp custom_effect_entry.data.duration[3]
execute unless score <precise_hour> global = <minimum_hour> variable run return run execute if score <precise_hour> global > <minimum_hour> variable

execute unless data storage pandamium:temp custom_effect_entry.data.duration[4] run return 1
execute store result score <minimum_minute> variable run data get storage pandamium:temp custom_effect_entry.data.duration[4]
execute unless score <precise_minute> global = <minimum_minute> variable run return run execute if score <precise_minute> global > <minimum_minute> variable

execute unless data storage pandamium:temp custom_effect_entry.data.duration[5] run return 1
execute store result score <minimum_second> variable run data get storage pandamium:temp custom_effect_entry.data.duration[5]
execute unless score <precise_second> global = <minimum_second> variable run return run execute if score <precise_second> global > <minimum_second> variable

return 1
