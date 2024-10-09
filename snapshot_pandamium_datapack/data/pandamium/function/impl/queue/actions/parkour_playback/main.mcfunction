#{
#	action: "parkour_playback",
#	record: [[...], ...],
#
#	teleport_targets: "_",
#
#	tick: INT,
#
#	next_entry_x: FLOAT,
#	next_entry_y: FLOAT,
#	next_entry_z: FLOAT,
#	next_entry_yaw: INT,
#	next_entry_pitch: INT,
#	next_entry_tick: INT,
#
#	previous_x: FLOAT,
#	previous_y: FLOAT,
#	previous_z: FLOAT
#}

# increment tick
execute store result score <tick> variable store result score <next_tick> variable run data get storage pandamium:queue selected.entry.tick
execute store result storage pandamium:queue selected.entry.tick int 1 run scoreboard players add <next_tick> variable 1

# if not ready yet, continue waiting
execute store result score <next_entry_tick> variable store result score <next_tick> variable run data get storage pandamium:queue selected.entry.next_entry_tick
execute if score <tick> variable < <next_entry_tick> variable run return run function pandamium:impl/queue/utils/continue

# next animation
$execute in overworld positioned 0. 0 0. run tp $(teleport_targets) ~$(next_entry_x) ~$(next_entry_y) ~$(next_entry_z) $(next_entry_yaw) $(next_entry_pitch)
$execute in overworld positioned 0. 0 0. positioned ~$(previous_x) ~$(previous_y) ~$(previous_z) run particle trail{color:16756480,target:[$(next_entry_x)d,$(next_entry_y)d,$(next_entry_z)d]} ~ ~0.1 ~ 0.1 0.1 0.1 1 10
# ^ does 0. 0 0. + relative coordinates to get around the issue of whole numbers getting 0.5 added to them when parsed by the macro.

# end if no more entries are left
execute unless data storage pandamium:queue selected.entry.record[0] run return 0

# move current to previous
data modify storage pandamium:queue selected.entry.previous_x set from storage pandamium:queue selected.entry.next_entry_x
data modify storage pandamium:queue selected.entry.previous_y set from storage pandamium:queue selected.entry.next_entry_y
data modify storage pandamium:queue selected.entry.previous_z set from storage pandamium:queue selected.entry.next_entry_z

# calculate next from first entry (and pop)
execute store result storage pandamium:queue selected.entry.next_entry_tick int 1 run data get storage pandamium:queue selected.entry.record[0][0]
execute store result score <next_entry_x> variable store result score <next_entry_z> variable run data get storage pandamium:queue selected.entry.record[0][1]
execute store result score <next_entry_y> variable store result score <next_entry_yaw> variable store result score <next_entry_pitch> variable run data get storage pandamium:queue selected.entry.record[0][2]
data remove storage pandamium:queue selected.entry.record[0]

scoreboard players operation <next_entry_z> variable %= #32768 constant
execute store result storage pandamium:queue selected.entry.next_entry_z float 0.03125 run scoreboard players remove <next_entry_z> variable 16384

scoreboard players operation <next_entry_x> variable /= #32768 constant
execute store result storage pandamium:queue selected.entry.next_entry_x float 0.03125 run scoreboard players remove <next_entry_x> variable 16384

scoreboard players operation <next_entry_y> variable %= #12288 constant
execute store result storage pandamium:queue selected.entry.next_entry_y float 0.03125 run scoreboard players remove <next_entry_y> variable 2048

scoreboard players operation <next_entry_yaw> variable /= #12288 constant
scoreboard players operation <next_entry_yaw> variable %= #360 constant
execute store result storage pandamium:queue selected.entry.next_entry_yaw int 1 run scoreboard players remove <next_entry_yaw> variable 180

scoreboard players operation <next_entry_pitch> variable /= #4423680 constant
execute store result storage pandamium:queue selected.entry.next_entry_pitch int 1 run scoreboard players remove <next_entry_pitch> variable 90

return run function pandamium:impl/queue/utils/continue
