# arguments: type, username
$data modify storage pandamium:temp arguments set value {type:"$(type)",username:"$(username)",operation:"none"}

# get user id
$execute store result storage pandamium:temp arguments.id int 1 store result score <id> variable run scoreboard players get $(username) id
execute unless score <id> variable matches 2.. run return 0

# check priority among alts
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
data modify storage pandamium:temp priority set value {id:0}
execute store result score <priority_id> variable store result storage pandamium:temp priority.id int 1 run data get storage pandamium.db:players selected.entry.id
execute if data storage pandamium.db:players selected.entry.data.alt_of run function pandamium:utils/database/players/load/from_id with storage pandamium.db:players selected.entry.data.alt_of
execute if data storage pandamium.db:players selected.entry.data.alts run function ... with storage pandamium:temp arguments
    # arguments: type

    data modify storage pandamium:temp priority.id set from storage pandamium.db:players selected.entry.id
    $data modify storage pandamium:temp priority set from storage pandamium.db:players selected.entry.data.alts[{flags:{"$(type)_lb":1b}}]
    execute store result score <priority_id> variable run data get storage pandamium:temp priority.id
    
execute unless score <priority_id> variable = <id> variable run return 0

# get value provider data
$data modify storage pandamium:temp arguments.source_objective set from storage pandamium:leaderboards $(type).source_objective
$data modify storage pandamium:temp arguments.operation set from storage pandamium:leaderboards $(type).operation
execute unless data storage pandamium:temp arguments.source_objective run return 0

# get maximum entries (index of excess entry to remove), and total entries
$execute store result score <max_entries> variable run data get storage pandamium:leaderboards $(type).max_entries
$execute store result score <buffer_entries> variable run data get storage pandamium:leaderboards $(type).buffer_entries
execute store result storage pandamium:temp arguments.max_entries int 1 run scoreboard players operation <max_entries> variable += <buffer_entries> variable
$execute store result score <total_entries> variable if data storage pandamium:leaderboards $(type).entries[]

function ... with storage pandamium:temp arguments
    # arguments: username, id, source_objective, operation, (type, max_entries)

    data modify storage pandamium:temp group_entry set value {value:-2147483648,display:{},players:[]}
    $data modify storage pandamium:temp player_entry set value {id:$(id),display:{name:'"$(username)"'}}

    $execute store result score <value> variable run scoreboard players get @s $(source_objective)
    $function pandamium:.../$(operation)
    # -> (score <value> variable), -> (storage pandamium:temp group_entry.display)
    execute store result storage pandamium:temp group_entry.value int 1 store result storage pandamium:temp arguments.value int 1 run scoreboard players get <value> variable

    function ... with storage pandamium:temp arguments
        # arguments: type, id, value, (username, source_objective, operation, max_entries)

        # end early if already in place
        $data modify storage pandamium:leaderboards $(type).entries[{value:$(value)}].players[{id:$(id)}] set from storage pandamium:temp player_entry
        $execute if data storage pandamium:leaderboards $(type).entries[{value:$(value)}].players[{id:$(id)}] run return 0

        # remove existing player entry
        $data remove storage pandamium:leaderboards $(type).entries[].players[{id:$(id)}]

        # update position (quick)
        $execute store result score <skip> variable if data storage pandamium:leaderboards $(type).entries[{value:$(value)}]
        $execute if score <skip> variable matches 1 run data modify storage pandamium:leaderboards $(type).entries[{value:$(value)}].players append from storage pandamium:temp player_entry
        execute if score <skip> variable matches 1 run return 0

        # update position (long)
        scoreboard players operation <index> variable = <total_entries> variable
        execute store result storage pandamium:temp arguments.index int 1 run scoreboard players remove <index> variable 1
        function ... with storage pandamium:temp arguments
            # arguments: type, index, (username, id, value, source_objective, operation, max_entries)
            $execute store result score <value_at_index> variable run data get storage pandamium:leaderboards $(type).entries[$(index)].value

            execute store success score <insert> variable if score <value_at_index> variable > <value> variable
            execute if score <index> variable matches ..-1 run scoreboard players set <insert> variable 1

            execute if score <insert> variable matches 1 store result storage pandamium:temp arguments.index int 1 run scoreboard players add <index> variable 1
            execute if score <insert> variable matches 1 run function ... with storage pandamium:temp arguments
                # arguments: type, index, (username, id, value, source_objective, operation, max_entries)
                $data modify storage pandamium:leaderboards $(type).entries insert $(index) from storage pandamium:temp group_entry
                $data modify storage pandamium:leaderboards $(type).entries[$(index)].players append storage pandamium:temp player_entry

            execute if score <insert> variable matches 1 run return 0
            execute store result storage pandamium:temp arguments.index int 1 run scoreboard players remove <index> variable 1
            function ... with storage pandamium:temp arguments
        
        # remove excess entry
        $data remove storage pandamium:leaderboards $(type).entries[$(max_entries)]
