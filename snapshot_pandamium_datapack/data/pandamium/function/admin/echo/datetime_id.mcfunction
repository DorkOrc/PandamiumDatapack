# arguments: datetime_id

$scoreboard players set <datetime_id> variable $(datetime_id)
function pandamium:utils/datetime/decompose_datetime_id
tellraw @s [{score:{name:"<year>",objective:"variable"}},"-",{score:{name:"<month>",objective:"variable"}},"-",{score:{name:"<day>",objective:"variable"}}," @ ",{score:{name:"<hour>",objective:"variable"}},":",{score:{name:"<minute>",objective:"variable"}},":",{score:{name:"<second>",objective:"variable"}}]
