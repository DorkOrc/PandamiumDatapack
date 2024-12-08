# arguments: username

$function pandamium:player/on_vote/main {username:"$(username)",service:"pandamium-admin"}

# feedback
$return run tellraw @s [{"text":"[Admin]","color":"dark_green"},{"text":" Granted 1 vote to $(username)! They now have ","color":"green","extra":[{"score":{"name":"$(username)","objective":"votes"}}," vote(s) and ",{"score":{"name":"$(username)","objective":"reward_credits"}}," reward credit(s)."]}]
