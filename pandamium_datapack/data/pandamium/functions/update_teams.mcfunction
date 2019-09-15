execute if entity @s[team=] run team join guest @s
execute if entity @s[team=guest] if score @s votes matches 5.. run team join player @s
execute if entity @s[team=player] if score @s votes matches 25.. run team join member @s
execute if entity @s[team=member] if score @s votes matches 125.. run team join elder @s
execute if entity @s[team=elder] if score @s votes matches 500.. run team join veteran @s