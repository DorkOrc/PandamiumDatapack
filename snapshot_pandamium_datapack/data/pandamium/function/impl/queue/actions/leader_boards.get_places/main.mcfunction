#{
#	action: "leader_boards.get_places",
#	place: INT,
#	leader_boards: [
#		{
#			name: TEXT_COMPONENT,
#			entries: [
#				{
#					display: TEXT_COMPONENT,
#					users: [
#						{
#							id: USER_ID
#						}
#						...
#					]
#				}
#				...
#			]
#		},
#		...
#	],
#	places: [
#		{
#			id: USER_ID,
#			credits: INT,
#			flairs_perk: BOOL,
#			components: [
#				TEXT_COMPONENT, ...
#			]
#		},
#		...
#	],
#   json_components: {monthly_playtime:[...],monthly_votes:[...]}
#}

data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*" set value {place_suffix:"th"}
execute store result score <place> variable store result storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".place int 1 run data get storage pandamium:queue selected.entry.place
execute if score <place> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".place_suffix set value "st"
execute if score <place> variable matches 2 run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".place_suffix set value "nd"
execute if score <place> variable matches 3 run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".place_suffix set value "rd"

data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".id set from storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].users[-1].id
function pandamium:utils/get/username/from_id with storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*"
data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".username set from storage pandamium:temp username
data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".leader_board_type set from storage pandamium:queue selected.entry.leader_boards[-1].type
data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".leader_board_name set from storage pandamium:queue selected.entry.leader_boards[-1].name

data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".values set value []
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*"{leader_board_type:"monthly_playtime"} run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".values append from storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].display.extra[0].text
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*"{leader_board_type:"monthly_playtime"} run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".values append from storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].display.extra[2].text
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*"{leader_board_type:"monthly_votes"} run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".values append string storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].value

function pandamium:impl/queue/actions/leader_boards.get_places/append_placement with storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*"

# next
data remove storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].users[-1]
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].users[] store result storage pandamium:queue selected.entry.place int 1 run scoreboard players add <place> variable 1
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[-1].users[] run data remove storage pandamium:queue selected.entry.leader_boards[-1].entries[-1]
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[] store result storage pandamium:queue selected.entry.place int 1 run scoreboard players set <place> variable 1
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[] run data remove storage pandamium:queue selected.entry.leader_boards[-1]

execute store result score <entries> variable store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.leader_boards[].entries[].users[]
execute if score <entries> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

# once done, start sending mail and granting rewards
execute unless data storage pandamium:queue selected.entry.places[] run return 0

data modify storage pandamium:queue entries append value {action:"leader_boards.give_rewards",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries[-1].month_name set from storage pandamium:queue selected.entry.month_name
data modify storage pandamium:queue entries[-1].year set from storage pandamium:queue selected.entry.year
data modify storage pandamium:queue entries[-1].places set from storage pandamium:queue selected.entry.places

# get leader board embed JSON
execute store result score <year> variable run data get storage pandamium:queue selected.entry.year
data modify storage do:io input set value [\
    '[{"title":"Monthly Playtime Leaderboard - ',\
    {storage:"pandamium:queue",nbt:"selected.entry.month_name",interpret:true},\
    ' ',\
    {score:{name:"<year>",objective:"variable"}},\
    '","color":"#00FF0F","entry_format":"%s Hrs & %s Mins","entries":[',\
    {storage:"pandamium:queue",nbt:'selected.entry.json_components.monthly_playtime[]',interpret:true,separator:","},\
    ']},{"title":"Monthly Votes Leaderboard - ',\
    {storage:"pandamium:queue",nbt:"selected.entry.month_name",interpret:true},\
    ' ',\
    {score:{name:"<year>",objective:"variable"}},\
    '","color":"#00FF0F","entry_format":"%s Hrs & %s Mins","entries":[',\
    {storage:"pandamium:queue",nbt:'selected.entry.json_components.monthly_votes[]',interpret:true,separator:","},\
    ']}]'\
]
function do:text/flatten
data modify storage pandamium.leader_boards:data previous_month_data.json set from storage do:io output
