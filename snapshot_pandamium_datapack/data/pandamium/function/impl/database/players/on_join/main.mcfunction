## Remove Vanish
execute if score <vanish_on> global matches 0 run scoreboard players reset @s vanished
execute unless score @s staff_rank matches 2.. run function pandamium:impl/database/players/on_join/disable_vanish {_:""}
execute if score @s staff_rank matches 2.. if score @s vanished matches 1 run gamemode spectator
execute if score @s staff_rank matches 2.. if score @s vanished matches 1 run dialog show @s {type:"minecraft:multi_action",title:"You Are Vanished",can_close_with_escape:1b,after_action:"close",columns:1,actions:[{label:"Stay Vanished"},{label:"Join in Survival Mode",action:{type:"run_command",command:"trigger vanish set 2"}}]}

#> Log In
data modify storage pandamium:temp player_data_on_join set from entity @s {}
data modify storage pandamium:temp uuid set from storage pandamium:temp player_data_on_join.UUID

data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid0 set from storage pandamium:temp uuid[0]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid1 set from storage pandamium:temp uuid[1]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid2 set from storage pandamium:temp uuid[2]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid3 set from storage pandamium:temp uuid[3]

function pandamium:impl/database/players/on_join/fetch_index with storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3

#> Post
# load
function pandamium:utils/database/players/load/self

# store/modify
execute store result score @s alt_of run data get storage pandamium.db.players:io selected.entry.data.alt_of.id
execute unless data storage pandamium.db.players:io selected.entry.data.alt_of.id run scoreboard players reset @s alt_of

scoreboard players reset @s supporter_rank
execute if data storage pandamium.db.players:io selected.entry.patreon_id run function pandamium:impl/database/players/on_join/set_supporter_rank with storage pandamium.db.players:io selected.entry

function pandamium:utils/database/players/modify/update_voting_streak
execute store result score <streak_is_active> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].active
execute if score <streak_is_active> variable matches 1 store result score @s voting_streak.length_in_days run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].length_in_days

execute if data storage pandamium.db.players:io selected.entry.data.pronouns_type store result score @s pronouns_type run data get storage pandamium.db.players:io selected.entry.data.pronouns_type
execute if data storage pandamium.db.players:io selected.entry.data.secondary_pronouns_type store result score @s secondary_pronouns_type run data get storage pandamium.db.players:io selected.entry.data.secondary_pronouns_type

execute if data storage pandamium.db.players:io selected.entry.data.custom_dye store result score @s custom_dye.type run data get storage pandamium.db.players:io selected.entry.data.custom_dye.type
execute if score @s custom_dye.type matches 4 run function pandamium:utils/database/players/modify/cache_custom_dye/fixed
execute if score @s custom_dye.type matches 5 run function pandamium:utils/database/players/modify/cache_custom_dye/gradient
execute if data storage pandamium.db.players:io selected.entry.data.custom_dye{off:true} run scoreboard players set @s custom_dye.off 1

execute if data storage pandamium.db.players:io selected.entry.data.particles.trail.type store result score @s particles_data.trail.type run data get storage pandamium.db.players:io selected.entry.data.particles.trail.type
execute if data storage pandamium.db.players:io selected.entry.data.particles.damage_effect.type store result score @s particles_data.damage_effect.type run data get storage pandamium.db.players:io selected.entry.data.particles.damage_effect.type

execute store result score @s parkour_4.attempts run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.attempts
execute store result score @s parkour_4.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.falls
execute store result score @s parkour_4.jumps run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.jumps
execute store result score @s parkour_4.completions run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.completions
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time store result score @s parkour_4.shortest_time.time run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.time
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time store result score @s parkour_4.shortest_time.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.falls
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls store result score @s parkour_4.fewest_falls.time run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.time
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls store result score @s parkour_4.fewest_falls.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.falls

execute if data storage pandamium.db.players:io selected.entry.data.join_events run function pandamium:impl/database/players/on_join/join_events/main

function pandamium:impl/database/cache/on_join/main with storage pandamium.db.players:io selected.entry

# save
function pandamium:utils/database/players/save
data remove storage pandamium:temp player_data_on_join
