execute at @s if dimension minecraft:the_end run function pandamium:impl/queue/append/teleport_to_end_platform
execute in minecraft:the_end positioned 100 49 0 rotated 90 0 run function pandamium:utils/teleport/here/from_source {source:"warp end_platform"}
