function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:triggers/options/actions/enable_home_triggers/with_username with storage pandamium:templates macro.username
