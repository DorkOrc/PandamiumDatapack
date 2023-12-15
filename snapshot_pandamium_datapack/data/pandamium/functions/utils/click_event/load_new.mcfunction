data remove storage pandamium:click_events selected
data modify storage pandamium:click_events selected.entry set value {click_event_id: 0, owner: {id: 0}, trigger: "", click_event_root: '""', data: {}}

# get click event id
execute store result score <click_event_id> variable run data get storage pandamium:click_events last_click_event_id
execute store result storage pandamium:click_events selected.entry.click_event_id int 1 store result storage pandamium:click_events last_click_event_id int 1 run scoreboard players add <click_event_id> variable 1

# append to entries list
data modify storage pandamium:click_events entries append from storage pandamium:click_events selected.entry
