data modify storage pandamium:templates teleport.source set value "warp end_platform"
execute in the_end run function pandamium:impl/teleport/dynamic/xyz with storage pandamium:global end_platform_position

execute at @s run tp @s ~ ~1 ~ 90 0
