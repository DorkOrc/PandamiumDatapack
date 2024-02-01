data modify storage pandamium:queue entries append value {action:"reset_dynamic_triggers.per_name",target:"_",names:[]}

function pandamium:utils/get/username
data modify storage pandamium:queue entries[-1].target set from storage pandamium:temp username

data modify storage pandamium:queue entries[-1].names append from storage pandamium.db:cache online_players[].username
