# arguments: id

$data modify storage pandamium.db:click_events {entries[{trigger: "search_players", owner: {id: $(id)}}]}.entries[{trigger: "search_players", owner: {id: $(id)}}].expired set value 1b
