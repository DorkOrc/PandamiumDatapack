data modify storage pandamium:temp leaderboards.self set value {value:-2147483648}
execute store result storage pandamium:temp leaderboards.self.id int 1 run scoreboard players operation <self_id> variable = @s id

tag @s add self
function pandamium:misc/ranks/update_team/normal
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"selector":"@a[tag=self,limit=1]"}'
function pandamium:misc/ranks/update_team
tag @s remove self
execute in pandamium:staff_world run data modify storage pandamium:temp leaderboards.self.display_name set from block 3 0 0 front_text.messages[0]

function pandamium:misc/get_username
data modify storage pandamium:temp leaderboards.self.username set from storage pandamium:temp username
