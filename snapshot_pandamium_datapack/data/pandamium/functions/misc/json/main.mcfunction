# in: storage pandamium:json string

data modify storage pandamium:json stack set value [{flags:{is_list:true},text:[],extra:[]}]
data modify storage pandamium:json char set value ''
data modify storage pandamium:json key set value ''
data modify storage pandamium:json all_characters set value []

scoreboard players set <state> variable 1
execute if data storage pandamium:json string run function pandamium:misc/json/parse/iter

data modify storage pandamium:json all_characters append from storage pandamium:json stack[0].text[]
data modify storage pandamium:json all_characters append from storage pandamium:json stack[0].extra[]
