# in: storage pandamium:json string

data modify storage pandamium:json stack set value [{flags:{is_list:true},text:[],extra:[]}]
data modify storage pandamium:json char set value ''
data modify storage pandamium:json key set value ''
data modify storage pandamium:json all_characters set value []
data modify storage pandamium:json root_attributes set value {}
scoreboard players set <found_original_text> variable 0

scoreboard players set <state> variable 1
execute if data storage pandamium:json string run function pandamium:misc/json/parse/iter
execute unless score <found_original_text> variable matches 1 run data modify storage pandamium:json all_characters append from storage pandamium:json stack[0].text[]
execute unless score <found_original_text> variable matches 1 run data modify storage pandamium:json all_characters append from storage pandamium:json stack[0].extra[]

execute if score <found_original_text> variable matches 1 run function pandamium:misc/json/resolve_original_text_characters
