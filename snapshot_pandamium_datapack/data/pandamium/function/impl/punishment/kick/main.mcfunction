# inputs:
# - storage pandamium:local functions."pandamium:impl/punishment/kick/*".target
# - storage pandamium:local functions."pandamium:impl/punishment/kick/*".source
# - storage pandamium:local functions."pandamium:impl/punishment/kick/*".announce

# resolve target
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".id set string storage pandamium:local functions."pandamium:impl/punishment/kick/*".target
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".id set from storage pandamium:local functions."pandamium:impl/punishment/kick/*".target
execute unless score <non_string> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".username set from storage pandamium:local functions."pandamium:impl/punishment/kick/*".target

data remove storage pandamium.db.players:io selected
execute if score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/punishment/kick/*"
execute unless score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_username with storage pandamium:local functions."pandamium:impl/punishment/kick/*"
execute unless data storage pandamium.db.players:io selected run return run function pandamium:utils/log_exception {args:{return:-1,function:"pandamium:impl/punishment/kick/main",message:'Invalid target'}}
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".target set from storage pandamium.db.players:io selected.entry.username

execute store result storage pandamium:local functions."pandamium:impl/punishment/kick/*".target_id int 1 run data get storage pandamium.db.players:io selected.entry.id
function pandamium:utils/get/display_name/from_username with storage pandamium.db.players:io selected.entry
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".target_display_name set from storage pandamium:temp display_name

# resolve source
execute unless function pandamium:impl/punishment/kick/source/resolve run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/main",message:['Invalid source: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".source',interpret:true}]}}
execute store success score <announce> variable if data storage pandamium:local functions."pandamium:impl/punishment/kick/*"{announce:true}
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".log_source_json set value '{"type":"unregistered"}'
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".announcement_insertion set value ""
scoreboard players set <valid_source> variable 0
execute store success score <valid_source> variable run function pandamium:impl/punishment/kick/source/with_type with storage pandamium:local functions."pandamium:impl/punishment/kick/*".source
execute if score <valid_source> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/main",message:['Invalid source type: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".source.target',interpret:true}]}}

# try kick
execute if score <announce> variable matches 1 store result score <id> variable run data get storage pandamium:local functions."pandamium:impl/punishment/kick/*".target_id
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/main",message:'Target is not online'}}

scoreboard players set <successful_kick> variable 0
execute store success score <successful_kick> variable as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:impl/punishment/kick/kick_target
execute if score <successful_kick> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/main",message:'Failed to kick target'}}

# log & announce
execute unless score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="kick",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".target',interpret:true},'","announce":false,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".log_source_json',interpret:true},'}']}}
execute if score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="kick",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".target',interpret:true},'","announce":true,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".log_source_json',interpret:true},'}']}}

execute unless score <announce> variable matches 1 run tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".target_display_name',interpret:true}," was kicked",{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".announcement_insertion',interpret:true},"!"]]
execute if score <announce> variable matches 1 run tellraw @a [{color:"dark_aqua",text:"[Info] "},{color:"aqua",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".target_display_name',interpret:true}," was kicked",{color:"aqua",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".announcement_insertion',interpret:true},"!"]

# success
return 1
