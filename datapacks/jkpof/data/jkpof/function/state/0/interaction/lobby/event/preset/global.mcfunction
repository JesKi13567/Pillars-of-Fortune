scoreboard players add #event_preset jkpof.int 1
execute if score #event_preset jkpof.int matches 2.. run scoreboard players set #event_preset jkpof.int 0

function jkpof:state/0/interaction/lobby/event/preset/0_default
execute if score #event_preset jkpof.int matches 1 run function jkpof:state/0/interaction/lobby/event/preset/1_author_love
function jkpof:state/0/interaction/lobby/event/preset/set_switch

function jkpof:state/0/interaction/lobby/event/show/global
