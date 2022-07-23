data modify storage pandamium:temp leaderboards.self set value {value:0}
execute store result storage pandamium:temp leaderboards.self.id int 1 run scoreboard players operation <self_id> variable = @s id

tag @s add self
execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign{Text1:'{"selector":"@a[tag=self,limit=1]"}'}
tag @s remove self

execute in pandamium:staff_world run data modify storage pandamium:temp leaderboards.self.display_name set from block 0 0 0 Text1
