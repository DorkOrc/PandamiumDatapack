# arguments: id

$data modify storage pandamium.db.click_events:data entries[{trigger: "mail", owner: {id: $(id)}}].expired set value 1b
