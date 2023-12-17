# arguments: trigger, value

$data modify storage pandamium.db:click_events selected.entry.click_event_root set value '{"clickEvent":{"action":"run_command","value":"/trigger $(trigger) set $(value)"},"text":""}'
