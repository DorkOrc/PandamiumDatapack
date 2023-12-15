# arguments: click_event_id

$data modify storage pandamium:click_events entries[{click_event_id:$(click_event_id)}] set from storage pandamium:click_events selected.entry
