#{
#	action: "database/datafixer",
#	entries: [...],
#	initial_entries_length: INT
#}

# process and pop top entry
execute if data storage pandamium:queue this.entries[-1].data.homes.1 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:1}
execute if data storage pandamium:queue this.entries[-1].data.homes.2 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:2}
execute if data storage pandamium:queue this.entries[-1].data.homes.3 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:3}
execute if data storage pandamium:queue this.entries[-1].data.homes.4 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:4}
execute if data storage pandamium:queue this.entries[-1].data.homes.5 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:5}
execute if data storage pandamium:queue this.entries[-1].data.homes.6 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:6}
execute if data storage pandamium:queue this.entries[-1].data.homes.7 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:7}
execute if data storage pandamium:queue this.entries[-1].data.homes.8 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:8}
execute if data storage pandamium:queue this.entries[-1].data.homes.9 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:9}
execute if data storage pandamium:queue this.entries[-1].data.homes.10 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:10}
execute if data storage pandamium:queue this.entries[-1].data.homes.11 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:11}
execute if data storage pandamium:queue this.entries[-1].data.homes.12 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:12}
execute if data storage pandamium:queue this.entries[-1].data.homes.13 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:13}
execute if data storage pandamium:queue this.entries[-1].data.homes.14 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:14}
execute if data storage pandamium:queue this.entries[-1].data.homes.15 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:15}
execute if data storage pandamium:queue this.entries[-1].data.homes.16 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:16}
execute if data storage pandamium:queue this.entries[-1].data.homes.17 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:17}
execute if data storage pandamium:queue this.entries[-1].data.homes.18 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:18}
execute if data storage pandamium:queue this.entries[-1].data.homes.19 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:19}
execute if data storage pandamium:queue this.entries[-1].data.homes.20 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:20}
execute if data storage pandamium:queue this.entries[-1].data.homes.21 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:21}
execute if data storage pandamium:queue this.entries[-1].data.homes.22 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:22}
execute if data storage pandamium:queue this.entries[-1].data.homes.23 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:23}
execute if data storage pandamium:queue this.entries[-1].data.homes.24 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:24}
execute if data storage pandamium:queue this.entries[-1].data.homes.25 run function pandamium:impl/queue/actions/database/datafixer/with_home {home:25}
data remove storage pandamium:queue this.entries[-1]

# update bossbar
bossbar add pandamium:queue/database.datafixer "[database.datafixer]"
bossbar set pandamium:queue/database.datafixer players @a[scores={send_extra_debug_info=1..}]
$bossbar set pandamium:queue/database.datafixer max $(initial_entries_length)

execute store result score <initial_entries_length> variable run data get storage pandamium:queue this.initial_entries_length
execute store result score <progress> variable run data get storage pandamium:queue this.entries
scoreboard players operation <progress> variable -= <initial_entries_length> variable
execute store result bossbar pandamium:queue/database.datafixer value run scoreboard players operation <progress> variable *= #-1 constant
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage.percentage int 1 run scoreboard players operation <progress> variable /= <initial_entries_length> variable
function pandamium:impl/queue/actions/database/datafixer/with_percentage with storage pandamium:templates macro.percentage

# continue
execute if data storage pandamium:queue this.entries[0] run return run function pandamium:impl/queue/run/recycle

# end
bossbar remove pandamium:queue/database.datafixer
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Completed data migration]"}
