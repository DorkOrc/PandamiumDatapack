# arguments: username, id

# skip if already in cache
$execute if data storage pandamium:cache online_players[{username:"$(username)"}] run return 0

#> Create Entry
$data modify storage pandamium:cache online_players append value {username: "$(username)", id: $(id), triggers: [], dynamic_triggers: [], mail: {inbox: [], outbox: [], inbox_pages: [], outbox_pages: []}}

#> Triggers
$function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"tpa.$(username)",id:$(id),trigger:"tpa",config:{type:"tpa_names",user_id:$(id),user_name:"$(username)"},target_selector:"@a"}
$function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"mail.$(username)",id:$(id),trigger:"mail",config:{type:"mail_names",user_id:$(id),user_name:"$(username)"},target_selector:"@a"}
$execute unless score @s staff_rank matches 1.. run function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"kick.$(username)",id:$(id),trigger:"kick",config:"helper_punishments",target_selector:"@a[scores={staff_perms=1..}]"}
$execute unless score @s staff_rank matches 1.. run function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"ban.$(username)",id:$(id),trigger:"ban",config:"moderator_punishments",target_selector:"@a[scores={staff_perms=2..}]"}
$execute unless score @s staff_rank matches 1.. run function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"jail.$(username)",id:$(id),trigger:"jail",config:{type:"jail",user_name:"$(username)"},target_selector:"@a[scores={staff_perms=1..}]"}
$execute unless score @s staff_rank matches 1.. run function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"unjail.$(username)",id:$(id),trigger:"unjail",config:{type:"unjail",user_name:"$(username)"},target_selector:"@a[scores={staff_perms=1..}]"}
$function pandamium:impl/database/cache/on_join/add_personal_trigger/main {alias:"player_info.$(username)",id:$(id),trigger:"player_info_v2",config:"player_info",target_selector:"@a[scores={staff_perms=1..}]"}

execute if data storage pandamium.db.players:io selected.entry.data.homes.1.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:1}
execute if data storage pandamium.db.players:io selected.entry.data.homes.2.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:2}
execute if data storage pandamium.db.players:io selected.entry.data.homes.3.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:3}
execute if data storage pandamium.db.players:io selected.entry.data.homes.4.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:4}
execute if data storage pandamium.db.players:io selected.entry.data.homes.5.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:5}
execute if data storage pandamium.db.players:io selected.entry.data.homes.6.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:6}
execute if data storage pandamium.db.players:io selected.entry.data.homes.7.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:7}
execute if data storage pandamium.db.players:io selected.entry.data.homes.8.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:8}
execute if data storage pandamium.db.players:io selected.entry.data.homes.9.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:9}
execute if data storage pandamium.db.players:io selected.entry.data.homes.10.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:10}
execute if data storage pandamium.db.players:io selected.entry.data.homes.11.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:11}
execute if data storage pandamium.db.players:io selected.entry.data.homes.12.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:12}
execute if data storage pandamium.db.players:io selected.entry.data.homes.13.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:13}
execute if data storage pandamium.db.players:io selected.entry.data.homes.14.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:14}
execute if data storage pandamium.db.players:io selected.entry.data.homes.15.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:15}
execute if data storage pandamium.db.players:io selected.entry.data.homes.16.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:16}
execute if data storage pandamium.db.players:io selected.entry.data.homes.17.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:17}
execute if data storage pandamium.db.players:io selected.entry.data.homes.18.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:18}
execute if data storage pandamium.db.players:io selected.entry.data.homes.19.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:19}
execute if data storage pandamium.db.players:io selected.entry.data.homes.20.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:20}
execute if data storage pandamium.db.players:io selected.entry.data.homes.21.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:21}
execute if data storage pandamium.db.players:io selected.entry.data.homes.22.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:22}
execute if data storage pandamium.db.players:io selected.entry.data.homes.23.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:23}
execute if data storage pandamium.db.players:io selected.entry.data.homes.24.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:24}
execute if data storage pandamium.db.players:io selected.entry.data.homes.25.plain_name run function pandamium:impl/database/cache/on_join/add_home_triggers/main {home:25}

#> Mail

#data modify storage pandamium:cache online_players[-1].mail.inbox set from storage pandamium.db.players:io selected.entry.data.mail.inbox
#data modify storage pandamium:cache online_players[-1].mail.outbox set from storage pandamium.db.players:io selected.entry.data.mail.outbox

# INBOX
#{
#	mail_id: 2,
#	sender_display_name: '...',
#	read: 0b,
#	page: 1b,
#   date_sent: [I; ...],
#   gametime_sent: ...,
#	data: {...}
#}

# OUTBOX
#{
#	mail_id: 2,
#	receivers_display_names: ['...', ...],
#	read: 0b,
#	page: 1b,
#   date_sent: [I; ...],
#   gametime_sent: ...,
#	data: {...}
#}

# *BOX PAGES
#{
#   from: {date: ..., gametime: ...},
#   to: {date: ..., gametime: ...},
#	page: 1b
#}
