data modify storage pandamium:queue entries append value {action:"update_rank_up_advancements"}
function pandamium:utils/get/username
data modify storage pandamium:queue entries[-1].username set from storage pandamium:text username
