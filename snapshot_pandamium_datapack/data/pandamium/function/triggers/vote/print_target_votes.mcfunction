# arguments: username

$execute store result score <votes> variable run scoreboard players get $(username) votes
$execute store result score <monthly_votes> variable run scoreboard players get $(username) monthly_votes
$execute store result score <yearly_votes> variable run scoreboard players get $(username) yearly_votes
$execute store result score <reward_credits> variable run scoreboard players get $(username) reward_credits

execute store result score <datetime_id> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].last_vote_datetime
function pandamium:utils/datetime/decompose_datetime_id
function pandamium:utils/datetime/get_datetime_text {args:[]}

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry

tellraw @s [{color:"yellow",text:"======== "},{bold:true,text:"Votes"}," ========"]
tellraw @s [{color:"yellow",text:""},{bold:true,text:"Player: "},[{color:"aqua",text:""},{storage:"pandamium:temp",nbt:"display_name",interpret:true}]]
tellraw @s [{color:"yellow",text:""},{color:"gold",text:"Votes: "},{bold:true,score:{name:"<votes>",objective:"variable"}}]
tellraw @s [{color:"yellow",text:""},{color:"gold",text:"Votes This Month: "},{bold:true,score:{name:"<monthly_votes>",objective:"variable"}}]
tellraw @s [{color:"yellow",text:""},{color:"gold",text:"Votes This Year: "},{bold:true,score:{name:"<yearly_votes>",objective:"variable"}}]
tellraw @s [{color:"yellow",text:""},{color:"gold",text:"Reward Credits: "},{bold:true,score:{name:"<reward_credits>",objective:"variable"}}]
tellraw @s [{color:"yellow",text:""},{color:"gold",text:"Last Voted Time: "},{storage:"pandamium:temp",nbt:"datetime_text.date_time",interpret:true}]
tellraw @s {color:"yellow",text:"======================="}
