function pandamium:utils/get/username
data modify storage pandamium:temp arguments set value {type:"playtime",value_provider:"total_playtime"}
data modify storage pandamium:temp arguments.username set from storage pandamium:temp username

function pandamium:impl/leaderboards/update_user_place/main with storage pandamium:temp arguments

data modify storage pandamium:temp arguments merge value {type:"monthly_playtime",value_provider:"monthly_playtime"}
function pandamium:impl/leaderboards/update_user_place/main with storage pandamium:temp arguments
