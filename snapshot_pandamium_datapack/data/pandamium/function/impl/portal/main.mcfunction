# context: as @a[gamemode=spectator,scores={optn.disable_spectator_portals=0}] at @s

execute if block ~ ~ ~ #portals run return run function pandamium:impl/portal/at_portal
execute positioned ~ ~1 ~ if block ~ ~ ~ #portals run return run function pandamium:impl/portal/at_portal
execute positioned ~ ~1.6 ~ if block ~ ~ ~ #portals run return run function pandamium:impl/portal/at_portal

title @s[scores={portal_ticks=5..80}] actionbar {"text":"Cancelled Teleport!","color":"red"}
scoreboard players reset @s portal_ticks
