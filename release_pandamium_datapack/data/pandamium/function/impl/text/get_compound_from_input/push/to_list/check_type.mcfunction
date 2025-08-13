execute unless data storage pandamium:temp push_target.value[0] run scoreboard players set <different> variable 0

execute if score <different> variable matches 0 run data modify storage pandamium:temp stack[-2].contents_type set from storage pandamium:temp push_source.type
execute if score <different> variable matches 0 if data storage pandamium:temp push_source{type:"integer"} run data modify storage pandamium:temp stack[-2].value set value [I;]

execute if score <different> variable matches 1 run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Illegal push: Cannot push ","extra":[{"storage":"pandamium:temp","nbt":"push_source.type"}," into a list"]}'}
