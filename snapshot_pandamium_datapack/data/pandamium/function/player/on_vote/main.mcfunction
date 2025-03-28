# Ran by external program
# arguments: username, service

# increase server stats
scoreboard players add <votes_this_month> global 1

# increase player stats
$function pandamium:utils/database/players/load/from_username {username:"$(username)"}
execute store success score <valid_username> variable store success score <username_in_database> variable if data storage pandamium.db.players:io selected
$execute unless score $(username) playtime_ticks matches 0.. run scoreboard players set <valid_username> variable 0

$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) yearly_votes 1
$scoreboard players operation $(username) reward_credits += <vote_credits_rewarded> global
$execute if score <username_in_database> variable matches 1 unless entity $(username) run scoreboard players add $(username) offline_votes 1

# handle streaks
scoreboard players set <do_voting_streaks> variable 1

scoreboard players set <previous_length_in_days> variable 0
scoreboard players set <length_in_days> variable 0
execute if score <do_voting_streaks> variable matches 1 if score <username_in_database> variable matches 1 run function pandamium:player/on_vote/handle_voting_streak
# score <previous_length_in_days> variable -> ?, score <length_in_days> variable -> ?
# also saves and deselects players db entry

# announce vote (unless hidden)
execute unless score <length_in_days> variable matches 3.. run scoreboard players set <do_voting_streaks> variable 0
execute unless score <length_in_days> variable > <previous_length_in_days> variable run scoreboard players set <do_voting_streaks> variable 0
$execute if score <valid_username> variable matches 1 if score $(username) hide_voting_announcements matches 1 run tellraw @a[scores={staff_perms=1..}] ["",{text:"[Staff Info]",color:"dark_gray",hover_event:{action:"show_text",value:"service-name: $(service)"}},{text:" Hidden vote message from $(service) for ",color:"gray",extra:[{text:"$(username)",color:"green"},"!"]}]
$execute if score <valid_username> variable matches 1 unless score $(username) hide_voting_announcements matches 1 if score <do_voting_streaks> variable matches 0 run tellraw @a ["",{text:"[Voting] ",color:"blue",hover_event:{action:"show_text",value:"service-name: $(service)"}},{text:"",color:"green",extra:[{text:"$(username)",color:"aqua"}," voted",{storage:"pandamium:dictionary",nbt:"votifier_service_sentence_end.'$(service)'",interpret:true},"! ",{text:"(+",extra:[{score:{name:"<vote_credits_rewarded>",objective:"global"},bold:true},{text:"Ⓒ)"}],color:"dark_green",hover_event:{action:"show_text",value:{text:"This player received ",extra:[{score:{name:"<vote_credits_rewarded>",objective:"global"}}," reward credit(s) for casting a vote for Pandamium on one of the 5 registered voting websites!"],color:"dark_green"}}}]}]
$execute if score <valid_username> variable matches 1 unless score $(username) hide_voting_announcements matches 1 if score <do_voting_streaks> variable matches 1 run tellraw @a ["",{text:"[Voting] ",color:"blue",hover_event:{action:"show_text",value:"service-name: $(service)"}},{text:"",color:"green",extra:[{text:"$(username)",color:"aqua"}," voted",{storage:"pandamium:dictionary",nbt:"votifier_service_sentence_end.'$(service)'",interpret:true},"! ",{text:"(+",extra:[{score:{name:"<vote_credits_rewarded>",objective:"global"},bold:true},{text:"Ⓒ)"}],color:"dark_green",hover_event:{action:"show_text",value:{text:"This player received ",extra:[{score:{name:"<vote_credits_rewarded>",objective:"global"}}," reward credit(s) for casting a vote for Pandamium on one of the 5 registered voting websites!"],color:"dark_green"}}},{text:" 🔥",extra:[{score:{name:"<length_in_days>",objective:"variable"},bold:true}],color:"#D4006F",shadow_color:[0.376f,0.0f,0.467f,0.5f]}]}]
$execute if score <valid_username> variable matches 0 run tellraw @a[scores={staff_perms=1..}] ["",{text:"[Staff Info]",color:"dark_gray",hover_event:{action:"show_text",value:"service-name: $(service)"}},{text:" Blocked vote message from $(service) for ",color:"gray",extra:[{text:"$(username)",color:"yellow"},"!"]}]

$data modify storage pandamium:local functions."pandamium:player/on_vote/*".log_components set value [\
    {\
        __component__: "username",\
        text: '"username":"$(username)"'\
    },\
    {\
        __component__: "valid_username",\
        text: '"valid_username":true'\
    },\
    {\
        __component__: "service",\
        text: '"service":"$(service)"'\
    },\
    {\
        __component__: "vote_credits_rewarded",\
        text: '"vote_credits_rewarded":',\
        extra: [{score:{name:"<vote_credits_rewarded>",objective:"global"}}]\
    },\
    {\
        __component__: "hide_voting_announcements",\
        text: '"hide_voting_announcements":false'\
    },\
    {\
        __component__: "streak_length_in_days",\
        text: '"streak_length_in_days":0'\
    }\
]
execute if score <valid_username> variable matches 0 run data modify storage pandamium:local functions."pandamium:player/on_vote/*".log_components[{__component__:"valid_username"}].text set value '"valid_username":false'
$execute if score $(username) hide_voting_announcements matches 1 run data modify storage pandamium:local functions."pandamium:player/on_vote/*".log_components[{__component__:"hide_voting_announcements"}].text set value '"hide_voting_announcements":true'
execute if score <length_in_days> variable matches 1.. run data modify storage pandamium:local functions."pandamium:player/on_vote/*".log_components[{__component__:"streak_length_in_days"}] merge value {text:'"streak_length_in_days":',extra:[{score:{name:"<length_in_days>",objective:"variable"}}]}
function pandamium:utils/log {args:{message:[{text:'event="vote",data={'},{storage:"pandamium:local",nbt:'functions."pandamium:player/on_vote/*".log_components[]',interpret:true,separator:","},{text:'}'}]}}

# if online
$execute as $(username) at @s run function pandamium:player/on_vote/as_player

# update place on voting leaderboards (unless blocked)
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"total_votes"}
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"monthly_votes"}
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"yearly_votes"}
execute if score <username_in_database> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms

# advancement progress
$function pandamium:misc/update_rank_advancement_progress/from_username {username:"$(username)"}
