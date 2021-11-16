function pandamium:misc/teleport/pre_hide_pos

gamemode survival
effect clear invisible

tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]
title @s actionbar ""
