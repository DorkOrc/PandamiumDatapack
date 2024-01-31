#{
#	action: "database.datafixer",
#	index: INT,
#	max_index: INT
#}

# process top entry
execute store result storage pandamium:templates macro.index.index int 1 store result score <index> variable store result bossbar pandamium:queue/database.datafixer value run data get storage pandamium:queue selected.entry.index
function pandamium:impl/queue/actions/database.datafixer/with_index with storage pandamium:templates macro.index

# update bossbar
bossbar add pandamium:queue/database.datafixer "[database.datafixer]"
bossbar set pandamium:queue/database.datafixer players @a[scores={send_extra_debug_info=1..}]
execute store result bossbar pandamium:queue/database.datafixer max store result score <max_index> variable run data get storage pandamium:queue selected.entry.max_index

scoreboard players operation <progress> variable = <index> variable
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage.percentage int 1 run scoreboard players operation <progress> variable /= <max_index> variable
function pandamium:impl/queue/actions/database.datafixer/with_percentage with storage pandamium:templates macro.percentage

# continue
execute store result storage pandamium:queue selected.entry.index int 1 run scoreboard players add <index> variable 1
execute if score <index> variable <= <max_index> variable run return run function pandamium:impl/queue/utils/continue

# end
bossbar remove pandamium:queue/database.datafixer
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Data fixer finished]"}
