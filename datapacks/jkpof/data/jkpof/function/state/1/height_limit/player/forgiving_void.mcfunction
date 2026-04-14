effect give @s blindness 3 0
effect give @s slow_falling 5 0

execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border jkpof.int matches 1 run return run tp @s ~ 78 ~
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border jkpof.int matches 0 run return run tp @s ~ 48 ~
tp @s ~ 118 ~
