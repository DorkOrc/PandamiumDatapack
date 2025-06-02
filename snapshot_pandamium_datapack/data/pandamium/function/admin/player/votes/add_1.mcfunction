# arguments: username

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},': admin player/votes/add_1 {username:"$(username)"}]']

$function pandamium:player/on_vote/main {username:"$(username)",service:"pandamium-admin"}

# feedback
$return run tellraw @s [{text:"[Admin]",color:"dark_green"},{text:" Granted 1 vote to $(username)! They now have ",color:"green",extra:[{score:{name:"$(username)",objective:"votes"}}," vote(s) and ",{score:{name:"$(username)",objective:"reward_credits"}}," reward credit(s)."]}]
