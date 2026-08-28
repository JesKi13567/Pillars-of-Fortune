execute if score #event_plus_14 jkpof.int matches 0 run return run attribute @s scale base set 0.5

execute store result storage jk:pof data.kid_mode.scale double 0.01 run random value 50..125
function jkpof:state/1/progress/event/14_kid_mode/random/1 with storage jk:pof data.kid_mode
