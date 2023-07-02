execute at @e[type=item_display,tag=custom_block.portal_cauldron,tag=custom_block.base] run particle portal ~ ~1 ~ 0.18 0.95 0.18 0.01 1
execute at @e[type=item_display,tag=custom_block.huge_portal,tag=custom_block.base] run particle portal ~ ~2.5 ~ 1.5 1.5 1.5 1 5

# elevators
execute if loaded -196 100 203 if entity @a[x=-196,y=100,z=203,distance=..30,gamemode=!spectator,limit=1] run function pandamium:impl/map_specific/elevator/tick_mineshaft_area
execute if loaded -312 125 122 if entity @a[x=-312,y=125,z=122,distance=..30,gamemode=!spectator,limit=1] run function pandamium:impl/map_specific/elevator/tick_maproom_area
