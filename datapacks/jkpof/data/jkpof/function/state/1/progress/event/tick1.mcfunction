execute if score #event_time jkpof.int matches -99.. run scoreboard players remove #event_time jkpof.int 1
execute if score #event_type jkpof.int matches 1 run function jkpof:state/1/progress/event/arrow/global
execute if score #event_type jkpof.int matches 2 run function jkpof:state/1/progress/event/lava/global
execute if score #event_type jkpof.int matches 3 if score #event_time jkpof.int matches 0 run function jkpof:state/1/progress/event/once/lightning/global
execute if score #event_type jkpof.int matches 5 run function jkpof:state/1/progress/event/bomb_chicken/global
execute if score #event_type jkpof.int matches 6 if score #event_time jkpof.int matches 40 run function jkpof:state/1/progress/event/once/chain_swap/global
