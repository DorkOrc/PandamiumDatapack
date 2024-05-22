#{
#	action: "leaderboards.reward_players",
#	entries: [],
#	initial_entries_length: INT or NULL
#}

execute unless data storage pandamium:queue selected.entry.entries[0] run return 0

bossbar add pandamium:queue/leaderboards.reward_players {"text":"[leaderboards.reward_players] pending"}
bossbar set pandamium:queue/leaderboards.reward_players players @a[scores={send_extra_debug_info=2..}]
execute unless data storage pandamium:queue selected.entry.initial_entries_length store result storage pandamium:queue selected.entry.initial_entries_length int 1 run data get storage pandamium:queue selected.entry.entries

# 
function pandamium:utils/get/username/from_id with storage pandamium:queue selected.entry.entries[0]
data modify storage pandamium:queue selected.entry.entries[0].username set from storage pandamium:temp username
function pandamium:impl/queue/actions/leaderboards.reward_players/give_rewards with storage pandamium:queue selected.entry.entries[0]
# (score <give_flairs_perk> variable) -> {0,1}

# load new mail
function pandamium:utils/database/mail/load_new

# set sender
function pandamium:utils/database/mail/modify/set_sender_type/server

# set receiver
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:queue selected.entry.entries[0]

# set title
function pandamium:utils/get/month_name with storage pandamium.leader_boards:data previous_month_data

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["Leader Board Rewards - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"storage":"pandamium.leader_boards:data","nbt":"previous_month_data.year"}]'
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.title set from block 3 0 0 front_text.messages[0]

# set message
execute if score <give_flairs_perk> variable matches 0 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["Congratulations on placing ",{"storage":"pandamium:queue","nbt":"selected.entry.entries[0].places[]","separator":{"text":" and ","color":"white"},"color":"gold"}," for ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"storage":"pandamium.leader_boards:data","nbt":"previous_month_data.year"},"!\\n\\nYou have been given ",[{"storage":"pandamium:queue","nbt":"selected.entry.entries[0].total_credits_rewarded","color":"aqua","bold":true}," reward credits"],"!"]'
execute if score <give_flairs_perk> variable matches 1 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["Congratulations on placing ",{"storage":"pandamium:queue","nbt":"selected.entry.entries[0].places[]","separator":{"text":" and ","color":"white"},"color":"gold"}," for ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"storage":"pandamium.leader_boards:data","nbt":"previous_month_data.year"},"!\\n\\nYou have been given ",[{"storage":"pandamium:queue","nbt":"selected.entry.entries[0].total_credits_rewarded","color":"aqua","bold":true}," reward credits"]," and access to ",{"text":"/trigger flair","color":"aqua","bold":true}," for this month!"]'
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.message set from block 3 0 0 front_text.messages[0]

# set preview
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Congratulations"'

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

# bossbar
execute store result score <entries_left> variable run data get storage pandamium:queue selected.entry.entries
execute store result bossbar pandamium:queue/leaderboards.reward_players max store result score <initial_entries_length> variable store result score <progress> variable run data get storage pandamium:queue selected.entry.initial_entries_length
execute store result bossbar pandamium:queue/leaderboards.reward_players value run scoreboard players operation <progress> variable -= <entries_left> variable
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage.percentage int 1 run scoreboard players operation <progress> variable /= <initial_entries_length> variable
function pandamium:impl/queue/actions/leaderboards.reward_players/with_percentage with storage pandamium:templates macro.percentage

# repeat until done
data remove storage pandamium:queue selected.entry.entries[0]
execute if data storage pandamium:queue selected.entry.entries[0] run return run function pandamium:impl/queue/utils/continue

# once done
bossbar remove pandamium:queue/leaderboards.reward_players
tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[Pandamium: queue/leaderboards.reward_players: Sent leader board rewards mails and reward credits]","color":"gray","italic":true}

function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/main
