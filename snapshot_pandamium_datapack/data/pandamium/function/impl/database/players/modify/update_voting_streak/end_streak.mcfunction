# update score
scoreboard players set @a[predicate=pandamium:matches_id,limit=1] voting_streak.length_in_days 0

# end previous streak
data remove storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].active

# if if previous_streak's length is less than 48 hours, ignore and remove the entry
execute unless score <length_in_seconds> variable matches 172800.. run return run data remove storage pandamium.db.players:io selected.entry.data.voting.streaks[-1]

# otherwise, announce end of streak
execute store result score <ticks> variable run scoreboard players operation <ticks> variable = <length_in_seconds> variable
scoreboard players operation <ticks> variable *= #ticks_per_second constant
function pandamium:utils/get/time_from_ticks_with_days
execute if score <days> variable matches 1 if score <hours> variable matches 1 run tellraw @a[predicate=pandamium:matches_id,limit=1] [{text:"[Voting]",color:"#600077"},{text:" ",color:"#96004f",extra:[{text:"Your streak of voting "},{text:"ended",color:"#790096"},{text:" after only "},{score:{name:"<days>",objective:"variable"},extra:[{text:" day"}],color:"#790096",bold:true},{text:" and "},{score:{name:"<hours>",objective:"variable"},extra:[{text:" hour"}],color:"#790096",bold:true},{text:"!"}]}]
execute if score <days> variable matches 1 unless score <hours> variable matches 1 run tellraw @a[predicate=pandamium:matches_id,limit=1] [{text:"[Voting]",color:"#600077"},{text:" ",color:"#96004f",extra:[{text:"Your streak of voting "},{text:"ended",color:"#790096"},{text:" after only "},{score:{name:"<days>",objective:"variable"},extra:[{text:" day"}],color:"#790096",bold:true},{text:" and "},{score:{name:"<hours>",objective:"variable"},extra:[{text:" hours"}],color:"#790096",bold:true},{text:"!"}]}]
execute if score <days> variable matches 2.. if score <hours> variable matches 1 run tellraw @a[predicate=pandamium:matches_id,limit=1] [{text:"[Voting]",color:"#600077"},{text:" ",color:"#96004f",extra:[{text:"Your streak of voting "},{text:"ended",color:"#790096"},{text:"! It lasted for "},{score:{name:"<days>",objective:"variable"},extra:[{text:" days"}],color:"#790096",bold:true},{text:" and "},{score:{name:"<hours>",objective:"variable"},extra:[{text:" hour"}],color:"#790096",bold:true},{text:"!"}]}]
execute if score <days> variable matches 2.. unless score <hours> variable matches 1 run tellraw @a[predicate=pandamium:matches_id,limit=1] [{text:"[Voting]",color:"#600077"},{text:" ",color:"#96004f",extra:[{text:"Your streak of voting "},{text:"ended",color:"#790096"},{text:"! It lasted for "},{score:{name:"<days>",objective:"variable"},extra:[{text:" days"}],color:"#790096",bold:true},{text:" and "},{score:{name:"<hours>",objective:"variable"},extra:[{text:" hours"}],color:"#790096",bold:true},{text:"!"}]}]

execute unless entity @a[predicate=pandamium:matches_id,limit=1] run data modify storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].unread set value 1b 

# overwrite longest_streak if previous_streak's length is longer than longest_streak's length (and longer than 48 hours)
execute store result score <longest_length_in_seconds> variable run data get storage pandamium.db.players:io selected.entry.data.voting.longest_streak.length_in_seconds
execute if score <length_in_seconds> variable > <longest_length_in_seconds> variable run data modify storage pandamium.db.players:io selected.entry.data.voting.longest_streak set from storage pandamium.db.players:io selected.entry.data.voting.streaks[-1]
execute if score <length_in_seconds> variable > <longest_length_in_seconds> variable store result storage pandamium.db.players:io selected.entry.data.voting.longest_streak.length_in_seconds int 1 run scoreboard players get <length_in_seconds> variable
