#{
#	action: "announcement",
#	heading: JSON_TEXT_COMPONENTS,
#	subheading: JSON_TEXT_COMPONENTS,
#	color: STRING,
#	targets: STRING,
#	duration: INT,
#	age: INT
#}

$execute if data storage pandamium:queue selected.entry{age:0} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5
$execute if data storage pandamium:queue selected.entry{age:2} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.594604
$execute if data storage pandamium:queue selected.entry{age:4} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.749154
$execute if data storage pandamium:queue selected.entry{age:6} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.0

#$execute if data storage pandamium:queue selected.entry{age:0} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.749154
#$execute if data storage pandamium:queue selected.entry{age:4} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.0
#$execute if data storage pandamium:queue selected.entry{age:11} as $(targets) at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.594604

execute if predicate {condition:"value_check",value:{type:"storage",storage:"pandamium:queue",path:"selected.entry.age"},range:{min:{type:"storage",storage:"pandamium:queue",path:"selected.entry.duration"}}} run return 0

execute store result storage pandamium:queue selected.entry.meta.value int -1 store result storage pandamium:queue selected.entry.age int -1 run data get storage pandamium:queue selected.entry.age -1.0000000001
execute if predicate {condition:"value_check",value:{type:"storage",storage:"pandamium:queue",path:"selected.entry.age"},range:{max:0}} run data modify storage pandamium:queue selected.entry.age set value 1
function pandamium:impl/queue/utils/continue
