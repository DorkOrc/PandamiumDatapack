advancement revoke @s only pandamium:detect/use_name_tag_on_entity

execute at @s[gamemode=!creative] anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=pandamium:entity/custom_name/revert] run function pandamium:entity/custom_name/restore_from_copy_and_drop_name_tag
execute at @s[gamemode=creative] anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=pandamium:entity/custom_name/revert] run function pandamium:entity/custom_name/restore_from_copy

execute at @s anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=!pandamium:entity/custom_name/revert,predicate=pandamium:entity/has_custom_name] run function pandamium:entity/custom_name/make_copy
