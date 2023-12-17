data remove storage pandamium.db:click_events selected
data modify storage pandamium.db:click_events selected.entry set value {click_event_id: 0, owner: {id: 0}, trigger: "", click_event_root: '""', data: {}}

# get click event id
execute store result score <click_event_id> variable run data get storage pandamium.db:click_events last_click_event_id
execute store result storage pandamium:templates macro.click_event_id.click_event_id int 1 store result storage pandamium.db:click_events selected.entry.click_event_id int 1 store result storage pandamium.db:click_events last_click_event_id int 1 run scoreboard players add <click_event_id> variable 1

# set index
function pandamium:impl/database/click_events/create/set_index with storage pandamium:templates macro.click_event_id

# append to entries list
data modify storage pandamium.db:click_events entries append from storage pandamium.db:click_events selected.entry
