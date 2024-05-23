data modify storage pandamium:temp arguments set value {output:"",substring:""}
execute if data storage pandamium:text substrings[0] in pandamium:staff_world run function pandamium:impl/text/flatten/concatenate_substrings/loop
