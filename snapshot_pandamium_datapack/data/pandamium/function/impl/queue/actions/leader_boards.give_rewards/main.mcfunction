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

# load new mail
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_automated
function pandamium:utils/database/mail/modify/set_sender_type/server
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:queue selected.entry.places[-1]

# set title
data modify storage pandamium:text input set value ["Leader Board Rewards - ",{storage:"pandamium:queue",nbt:"selected.entry.month_name"}," ",{storage:"pandamium:queue",nbt:"selected.entry.year"}]
function pandamium:utils/text/flatten
data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output

# set message
    execute if score <give_flairs_perk> variable matches 1 run data modify storage pandamium:text input set value ["Congratulations on placing ",{storage:"pandamium:queue",nbt:"selected.entry.places[-1].components[]",interpret:true,separator:" and "}," for ",{storage:"pandamium:queue",nbt:"selected.entry.month_name"}," ",{storage:"pandamium:queue",nbt:"selected.entry.year"},"!\n\nYou have been rewarded ",[{bold:true,color:"aqua",storage:"pandamium:queue",nbt:"selected.entry.places[-1].credits"}," reward credits"]," and access to ",{bold:true,color:"aqua",text:"/trigger flair",hover_event:{action:"show_text",value:{color:"aqua",text:"Click to browse the flair options"}},click_event:{action:"run_command",command:"trigger flair"}}," for this month!"]
execute unless score <give_flairs_perk> variable matches 1 run data modify storage pandamium:text input set value ["Congratulations on placing ",{storage:"pandamium:queue",nbt:"selected.entry.places[-1].components[]",interpret:true,separator:" and "}," for ",{storage:"pandamium:queue",nbt:"selected.entry.month_name"}," ",{storage:"pandamium:queue",nbt:"selected.entry.year"},"!\n\nYou have been rewarded ",[{bold:true,color:"aqua",storage:"pandamium:queue",nbt:"selected.entry.places[-1].credits"}," reward credits"],"!"]
function pandamium:utils/text/input/resolve
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text input

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

# continue
data remove storage pandamium:queue selected.entry.places[-1]
execute store result score <entries> variable store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.places[]
execute if score <entries> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

# once done
function pandamium:utils/log {args:{tell_online:true,message:"Sent monthly leader board rewards"}}
