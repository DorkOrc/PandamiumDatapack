# arguments: trigger, value

$data modify storage pandamium.db.click_events:io selected.entry.click_event_root set value {text:"",click_event:{action:"run_command",command:"trigger $(trigger) set $(value)"}}
