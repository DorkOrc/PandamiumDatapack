# arguments: click_event_id

data remove storage pandamium:click_events selected
$data modify storage pandamium:click_events selected.entry set from storage pandamium:click_events entries[{click_event_id:$(click_event_id)}]
