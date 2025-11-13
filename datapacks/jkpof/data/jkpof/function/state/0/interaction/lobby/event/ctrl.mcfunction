scoreboard players add #event_ctrl jkpof.int 1
execute if score #event_ctrl jkpof.int matches 2.. run scoreboard players set #event_ctrl jkpof.int 0

execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_vote jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable__1 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_0 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_1 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_2 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_3 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_4 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_5 jkpof.int 0

execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_vote jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable__1 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_0 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_1 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_2 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_3 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_4 jkpof.int 1
execute if score #event_ctrl jkpof.int matches 1 run scoreboard players set #event_enable_5 jkpof.int 1

function jkpof:state/0/interaction/lobby/event/show
