function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:impl/teams/remove_suffix/with_username with storage pandamium:templates macro.username
