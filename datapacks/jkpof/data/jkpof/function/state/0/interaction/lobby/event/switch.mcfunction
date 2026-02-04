execute if score #event_order jkpof.int matches -2 run scoreboard players add #event_vote jkpof.int 1
execute if score #event_order jkpof.int matches -1 run scoreboard players add #event_enable__1 jkpof.int 1
execute if score #event_order jkpof.int matches 0 run scoreboard players add #event_enable_0 jkpof.int 1
execute if score #event_order jkpof.int matches 1 run scoreboard players add #event_enable_1 jkpof.int 1
execute if score #event_order jkpof.int matches 2 run scoreboard players add #event_enable_2 jkpof.int 1
execute if score #event_order jkpof.int matches 3 run scoreboard players add #event_enable_3 jkpof.int 1
execute if score #event_order jkpof.int matches 4 run scoreboard players add #event_enable_4 jkpof.int 1
execute if score #event_order jkpof.int matches 5 run scoreboard players add #event_enable_5 jkpof.int 1
execute if score #event_order jkpof.int matches 6 run scoreboard players add #event_enable_6 jkpof.int 1
execute if score #event_order jkpof.int matches 7 run scoreboard players add #event_enable_7 jkpof.int 1

execute if score #event_vote jkpof.int matches 2.. run scoreboard players set #event_vote jkpof.int 0
execute if score #event_enable__1 jkpof.int matches 2.. run scoreboard players set #event_enable__1 jkpof.int 0
execute if score #event_enable_0 jkpof.int matches 2.. run scoreboard players set #event_enable_0 jkpof.int 0
execute if score #event_enable_1 jkpof.int matches 2.. run scoreboard players set #event_enable_1 jkpof.int 0
execute if score #event_enable_2 jkpof.int matches 2.. run scoreboard players set #event_enable_2 jkpof.int 0
execute if score #event_enable_3 jkpof.int matches 2.. run scoreboard players set #event_enable_3 jkpof.int 0
execute if score #event_enable_4 jkpof.int matches 2.. run scoreboard players set #event_enable_4 jkpof.int 0
execute if score #event_enable_5 jkpof.int matches 2.. run scoreboard players set #event_enable_5 jkpof.int 0
execute if score #event_enable_6 jkpof.int matches 2.. run scoreboard players set #event_enable_6 jkpof.int 0
execute if score #event_enable_7 jkpof.int matches 2.. run scoreboard players set #event_enable_7 jkpof.int 0

function jkpof:state/0/interaction/lobby/event/show
