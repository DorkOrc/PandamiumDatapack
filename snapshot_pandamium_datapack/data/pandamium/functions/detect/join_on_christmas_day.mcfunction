function pandamium:utils/get/username
tellraw @s [{"text":"[Pandamium]","color":"blue"},[{"text":" Thank you, ","color":"green"},{"storage":"pandamium:temp","nbt":"username"},", for playing on our server! The Pandamium team wishes you a ",{"text":"Merry Christmas ❤","color":"aqua"},"!"]]
scoreboard players add @s vote_credits 20

execute unless predicate pandamium:wearing_anything_on_head run return run item replace entity @s armor.head with player_head{SkullOwner: {Name: "§lPresent§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
give @s player_head{SkullOwner: {Name: "§lPresent§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZjlhYTE0ZTg4NDc3M2VhYzEzNGE0ZWU4OTcyMDYzZjQ2NmRlNjc4MzYzY2Y3YjFhMjFhODViNyJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
