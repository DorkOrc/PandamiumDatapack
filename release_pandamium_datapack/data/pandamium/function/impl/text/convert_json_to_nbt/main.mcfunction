# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

data remove storage pandamium:text output
function pandamium:impl/text/convert_json_to_nbt/interpret_as_snbt with storage pandamium:text {}

return 1
