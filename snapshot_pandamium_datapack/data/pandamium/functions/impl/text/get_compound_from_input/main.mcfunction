data modify storage pandamium:templates macro.json.json set from storage pandamium:text input
data modify storage pandamium:text compound set value {text:""}
function pandamium:impl/text/get_compound_from_input/convert with storage pandamium:templates macro.json
