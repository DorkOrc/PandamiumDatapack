function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:misc/update_rank_advancement_progress/from_username with storage pandamium:templates macro.username
