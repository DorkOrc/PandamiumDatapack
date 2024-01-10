#{
#	action: "database.datafixer",
#	entries: [...],
#	initial_entries_length: INT
#}

# process top entry
data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.entries[-1]
function pandamium:impl/queue/actions/database.datafixer/with_username with storage pandamium:templates macro.username

# update bossbar
bossbar add pandamium:queue/database.datafixer "[database.datafixer]"
bossbar set pandamium:queue/database.datafixer players @a[scores={send_extra_debug_info=1..}]
execute store result bossbar pandamium:queue/database.datafixer max run data get storage pandamium:queue selected.entry.initial_entries_length

execute store result score <initial_entries_length> variable run data get storage pandamium:queue selected.entry.initial_entries_length
execute store result score <progress> variable run data get storage pandamium:queue selected.entry.entries
scoreboard players operation <progress> variable -= <initial_entries_length> variable
execute store result bossbar pandamium:queue/database.datafixer value run scoreboard players operation <progress> variable *= #-1 constant
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage.percentage int 1 run scoreboard players operation <progress> variable /= <initial_entries_length> variable
function pandamium:impl/queue/actions/database.datafixer/with_percentage with storage pandamium:templates macro.percentage

# continue
data remove storage pandamium:queue selected.entry.entries[-1]
execute if data storage pandamium:queue selected.entry.entries[0] run return run function pandamium:impl/queue/utils/continue

# end
bossbar remove pandamium:queue/database.datafixer
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Data fixer finished]"}
