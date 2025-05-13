# arguments: user_id

$execute if data storage pandamium:queue entries[{action:"rtp",user_id:$(user_id)}] run return 1
return fail
