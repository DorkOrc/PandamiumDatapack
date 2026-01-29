#{
#	action: "leader_boards.give_rewards",
#	places: [
#		{
#			id: USER_ID,
#			credits: INT,
#			flairs_perk: BOOL,
#			components: [
#				TEXT_COMPONENT, ...
#			]
#		},
#		...
#	]
#}

# give reward credits and flair perms
execute store result score <give_flairs_perk> variable run data get storage pandamium:queue selected.entry.places[-1].flairs_perk
function pandamium:impl/queue/actions/leader_boards.give_rewards/give_rewards with storage pandamium:queue selected.entry.places[-1]

# load new mail
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_automated
function pandamium:utils/database/mail/modify/set_sender_type/server
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:queue selected.entry.places[-1]

# set title
execute store result score <year> variable run data get storage pandamium:queue selected.entry.year
data modify storage do:io input set value ["Leader Board Rewards - ",{storage:"pandamium:queue",nbt:"selected.entry.month_name",interpret:true}," ",{score:{name:"<year>",objective:"variable"}}]
function do:text/flatten
data modify storage pandamium.db.mail:io selected.entry.data.title set from storage do:io output

# set message
execute store result score <credits> variable run data get storage pandamium:queue selected.entry.credits
    execute if score <give_flairs_perk> variable matches 1 run data modify storage do:io input set value ["Congratulations on placing ",{storage:"pandamium:queue",nbt:"selected.entry.places[-1].components[]",interpret:true,separator:{color:"white",text:" and "}}," for ",{storage:"pandamium:queue",nbt:"selected.entry.month_name",interpret:true}," ",{score:{name:"<year>",objective:"variable"}},"!\n\nYou have been rewarded ",[{bold:true,color:"aqua",score:{name:"<credits>",objective:"variable"}}," reward credits"]," and access to ",{bold:true,color:"aqua",text:"/trigger flair",hover_event:{action:"show_text",value:{color:"aqua",text:"Click to browse the flair options"}},click_event:{action:"run_command",command:"trigger flair"}}," for this month!"]
execute unless score <give_flairs_perk> variable matches 1 run data modify storage do:io input set value ["Congratulations on placing ",{storage:"pandamium:queue",nbt:"selected.entry.places[-1].components[]",interpret:true,separator:{color:"white",text:" and "}}," for ",{storage:"pandamium:queue",nbt:"selected.entry.month_name",interpret:true}," ",{score:{name:"<year>",objective:"variable"}},"!\n\nYou have been rewarded ",[{bold:true,color:"aqua",score:{name:"<credits>",objective:"variable"}}," reward credits"],"!"]
function do:text/resolve
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage do:io output

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

# continue
data remove storage pandamium:queue selected.entry.places[-1]
execute store result score <entries> variable store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.places[]
execute if score <entries> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

# once done
function pandamium:utils/log {args:{tell_online:true,message:"Sent monthly leader board rewards"}}
execute as @a run function pandamium:player/teams/update_suffix
