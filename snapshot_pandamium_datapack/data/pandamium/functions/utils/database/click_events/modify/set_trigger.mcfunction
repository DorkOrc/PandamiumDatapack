# arguments: trigger

$data modify storage pandamium.db:click_events selected.entry.trigger set value "$(trigger)"

$data modify storage pandamium:templates macro.trigger__value.trigger set value "$(trigger)"
execute store result score <click_event_root_value> variable run data get storage pandamium.db:click_events selected.entry.click_event_id
scoreboard players add <click_event_root_value> variable 2146000000
execute store result storage pandamium:templates macro.trigger__value.value int 1 run scoreboard players operation <click_event_root_value> variable *= #-1 constant
function pandamium:impl/database/click_events/modify/set_click_event_root with storage pandamium:templates macro.trigger__value
