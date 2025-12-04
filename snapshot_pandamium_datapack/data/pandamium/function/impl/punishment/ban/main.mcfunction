# inputs:
# - storage pandamium:local functions."pandamium:impl/punishment/ban/*".target
# - storage pandamium:local functions."pandamium:impl/punishment/ban/*".source
# - storage pandamium:local functions."pandamium:impl/punishment/ban/*".announce

# resolve target
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".id set string storage pandamium:local functions."pandamium:impl/punishment/ban/*".target
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".id set from storage pandamium:local functions."pandamium:impl/punishment/ban/*".target
execute unless score <non_string> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".username set from storage pandamium:local functions."pandamium:impl/punishment/ban/*".target

data remove storage pandamium.db.players:io selected
execute if score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/punishment/ban/*"
execute unless score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_username with storage pandamium:local functions."pandamium:impl/punishment/ban/*"
execute unless data storage pandamium.db.players:io selected run return run function pandamium:utils/log_exception {args:{return:-1,function:"pandamium:impl/punishment/ban/main",message:'Invalid target'}}
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".target set from storage pandamium.db.players:io selected.entry.username

execute store result storage pandamium:local functions."pandamium:impl/punishment/ban/*".target_id int 1 run data get storage pandamium.db.players:io selected.entry.id
function pandamium:utils/get/display_name/from_username with storage pandamium.db.players:io selected.entry
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".target_display_name set from storage pandamium:temp display_name

# resolve source
execute unless function pandamium:impl/punishment/ban/source/resolve run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/ban/main",message:['Invalid source: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".source'}]}}
execute store success score <announce> variable if data storage pandamium:local functions."pandamium:impl/punishment/ban/*"{announce:true}
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".log_source_json set value '{"type":"unregistered"}'
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".announcement_insertion set value ""
scoreboard players set <valid_source> variable 0
execute store success score <valid_source> variable run function pandamium:impl/punishment/ban/source/with_type with storage pandamium:local functions."pandamium:impl/punishment/ban/*".source
execute if score <valid_source> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/ban/main",message:['Invalid source type: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".source.target'}]}}

# try ban
execute if score <announce> variable matches 1 store result score <id> variable run data get storage pandamium:local functions."pandamium:impl/punishment/ban/*".target_id
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/ban/main",message:'Target is not online'}}

scoreboard players set <successful_ban> variable 0
execute store success score <successful_ban> variable as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:impl/punishment/ban/ban_target
execute if score <successful_ban> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/ban/main",message:'Failed to ban target'}}

# log & announce
execute unless score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="ban",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".target'},'","announce":false,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".log_source_json',interpret:true},'}']}}
execute if score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="ban",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".target'},'","announce":true,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".log_source_json',interpret:true},'}']}}

execute unless score <announce> variable matches 1 run tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".target_display_name',interpret:true}," was banned",{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".announcement_insertion',interpret:true},"!"]]
execute if score <announce> variable matches 1 run tellraw @a [{color:"dark_red",text:"[Info] "},{color:"red",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".target_display_name',interpret:true}," was banned",{color:"red",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".announcement_insertion',interpret:true},"!"]

# success
return 1
