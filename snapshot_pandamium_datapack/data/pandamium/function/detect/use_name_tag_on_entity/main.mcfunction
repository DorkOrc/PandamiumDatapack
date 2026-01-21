advancement revoke @s only pandamium:detect/use_name_tag_on_entity

execute at @s[gamemode=!creative] anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=pandamium:entity/revert_custom_name] run function pandamium:entity/restore_custom_name_copy_and_drop_name_tag
execute at @s[gamemode=creative] anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=pandamium:entity/revert_custom_name] run function pandamium:entity/restore_custom_name_copy

execute at @s anchored eyes positioned ^ ^ ^ as @e[distance=..20,predicate=!pandamium:entity/revert_custom_name,predicate=pandamium:entity/has_custom_name] run function pandamium:entity/make_custom_name_copy
