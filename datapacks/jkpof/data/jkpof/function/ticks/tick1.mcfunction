schedule function jkpof:ticks/tick1 1t replace
execute if score #state jkpof.int matches 0 run function jkpof:state/0/tick1
execute if score #state jkpof.int matches 1 run function jkpof:state/1/ticks/tick1
