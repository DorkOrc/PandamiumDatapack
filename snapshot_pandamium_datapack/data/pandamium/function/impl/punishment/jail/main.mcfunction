# inputs:
# - storage pandamium:local functions."pandamium:impl/punishment/jail/*".target
# - storage pandamium:local functions."pandamium:impl/punishment/jail/*".source
# - storage pandamium:local functions."pandamium:impl/punishment/jail/*".announce

# resolve target
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".id set string storage pandamium:local functions."pandamium:impl/punishment/jail/*".target
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".id set from storage pandamium:local functions."pandamium:impl/punishment/jail/*".target
execute unless score <non_string> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".username set from storage pandamium:local functions."pandamium:impl/punishment/jail/*".target

data remove storage pandamium.db.players:io selected
execute if score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/punishment/jail/*"
execute unless score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_username with storage pandamium:local functions."pandamium:impl/punishment/jail/*"
execute unless data storage pandamium.db.players:io selected run return run function pandamium:utils/log_exception {args:{return:-1,function:"pandamium:impl/punishment/jail/main",message:'Invalid target'}}
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".target set from storage pandamium.db.players:io selected.entry.username

execute store result storage pandamium:local functions."pandamium:impl/punishment/jail/*".target_id int 1 run data get storage pandamium.db.players:io selected.entry.id
function pandamium:utils/get/display_name/from_username with storage pandamium.db.players:io selected.entry
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".target_display_name set from storage pandamium:temp display_name

# resolve source
execute unless function pandamium:impl/punishment/jail/source/resolve run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/jail/main",message:['Invalid source: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".source'}]}}
execute store success score <announce> variable if data storage pandamium:local functions."pandamium:impl/punishment/jail/*"{announce:true}
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".log_source_json set value '{"type":"unregistered"}'
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".announcement_insertion set value ""
scoreboard players set <valid_source> variable 0
execute store success score <valid_source> variable run function pandamium:impl/punishment/jail/source/with_type with storage pandamium:local functions."pandamium:impl/punishment/jail/*".source
execute if score <valid_source> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/jail/main",message:['Invalid source type: ',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".source.target'}]}}

# try jail
scoreboard players set <successful_jail> variable 0
execute store success score <successful_jail> variable run function pandamium:impl/punishment/jail/jail_target with storage pandamium:local functions."pandamium:impl/punishment/jail/*"
execute if score <successful_jail> variable matches 0 run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/jail/main",message:'Failed to jail target'}}

# log & announce
execute unless score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="jail",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".target'},'","announce":false,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".log_source_json',interpret:true},'}']}}
execute if score <announce> variable matches 1 run function pandamium:utils/log {args:{message:['event="jail",data={"username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".target'},'","announce":true,"source":',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".log_source_json',interpret:true},'}']}}

execute unless score <announce> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".target_display_name',interpret:true}," was jailed",{color:"gray",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".announcement_insertion',interpret:true},"!"]]
execute if score <announce> variable matches 1 store result score <id> variable run data get storage pandamium:local functions."pandamium:impl/punishment/jail/*".target_id
execute if score <announce> variable matches 1 run tellraw @a[predicate=!pandamium:matches_id] [{color:"dark_purple",text:"[Info] "},{color:"light_purple",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".target_display_name',interpret:true}," was jailed",{color:"light_purple",storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".announcement_insertion',interpret:true},"!"]

# success
return 1
