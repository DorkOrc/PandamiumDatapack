#{
#	action: "region_search.homes",
#	source: INT,
#	gametime_start: INT,
#	entries: [
#		{
#			xyz: [I; X, Y, Z],
#			data: [I; USER_ID, HOME_NUMBER]
#		} 
#	],
#	initial_entries_length: INT,
#	output: []
#}

# initialise bossbar
$bossbar add pandamium:queue/region_search.homes/$(source)-$(gametime_start) "[region_search]"
$bossbar set pandamium:queue/region_search.homes/$(source)-$(gametime_start) players @a[scores={id=$(source)}]
$execute store result bossbar pandamium:queue/region_search.homes/$(source)-$(gametime_start) max run data get storage pandamium:queue this.initial_entries_length

# wait if other region searches are happening
$execute if score <queue.region_search> variable matches 1 run bossbar set pandamium:queue/region_search.homes/$(source)-$(gametime_start) name "[region_search] Pending"
execute if score <queue.region_search> variable matches 1 run return run function pandamium:impl/queue/run/recycle
scoreboard players set <queue.region_search> variable 1

execute if data storage pandamium:queue this.entries[-1] run function pandamium:impl/queue/actions/region_search.homes/process_entry

# update bossbar
execute store result score <initial_entries_length> variable run data get storage pandamium:queue this.initial_entries_length
execute store result score <progress> variable run data get storage pandamium:queue this.entries
scoreboard players operation <progress> variable -= <initial_entries_length> variable
$execute store result bossbar pandamium:queue/region_search.homes/$(source)-$(gametime_start) value run scoreboard players operation <progress> variable *= #-1 constant
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage__count__source__gametime_start.percentage int 1 run scoreboard players operation <progress> variable /= <initial_entries_length> variable
execute store result storage pandamium:templates macro.percentage__count__source__gametime_start.source int 1 run data get storage pandamium:queue this.source
execute store result storage pandamium:templates macro.percentage__count__source__gametime_start.gametime_start int 1 run data get storage pandamium:queue this.gametime_start
execute store result storage pandamium:templates macro.percentage__count__source__gametime_start.count int 1 store result score <count> variable run data get storage pandamium:queue this.output
function pandamium:impl/queue/actions/region_search.homes/with_percentage with storage pandamium:templates macro.percentage__count__source__gametime_start

# continue
execute if data storage pandamium:queue this.entries[0] run return run function pandamium:impl/queue/run/recycle

# end
data modify storage pandamium:temp nearby_homes set from storage pandamium:queue this.output

$bossbar remove pandamium:queue/region_search.homes/$(source)-$(gametime_start)
tellraw @a[scores={send_extra_debug_info=2..}] [{"color":"gray","italic":true,"text":"[queue.region_search.homes: Completed region search; Found ","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"nearby_homes[].message","interpret":true,"separator":"\n"}]}},{"score":{"name":"<count>","objective":"variable"}}," homes within 500 blocks]"]


$execute if data storage pandamium:temp nearby_homes[0] run tellraw @a[scores={id=$(source)}] [{"text":"[Search Nearby]","color":"dark_green"},[{"text":" Completed region search! Found ","color":"green"},{"score":{"name":"<count>","objective":"variable"},"color":"aqua"}," homes within 500 blocks of ",[{"storage":"pandamium:queue","nbt":"this.origin[0]","color":"aqua"}," ~ ",{"storage":"pandamium:queue","nbt":"this.origin[2]"}],":",[{"text":"\n• ","color":"gray"},{"storage":"pandamium:temp","nbt":"nearby_homes[].message","interpret":true,"separator":"\n• "}]]]
$execute unless data storage pandamium:temp nearby_homes[0] run tellraw @a[scores={id=$(source)}] [{"text":"[Search Nearby]","color":"dark_green"},[{"text":" Completed region search! Found ","color":"green"},{"text":"0","color":"aqua"}," homes within 500 blocks of ",[{"storage":"pandamium:queue","nbt":"this.origin[0]","color":"aqua"}," ~ ",{"storage":"pandamium:queue","nbt":"this.origin[2]"}],"."]]
