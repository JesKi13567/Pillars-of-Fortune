scoreboard players remove #event_time jkpof.int 1
execute if score #event_type jkpof.int matches 1 run function jkpof:state/1/progress/event/arrow/global
execute if score #event_type jkpof.int matches 2 run function jkpof:state/1/progress/event/lava/global
execute if score #event_type jkpof.int matches 3 if score #event_time jkpof.int matches 0 run function jkpof:state/1/progress/event/lightning/global
execute if score #event_type jkpof.int matches 5 run function jkpof:state/1/progress/event/bomb_chicken/global
execute if score #event_type jkpof.int matches 6 if score #event_time jkpof.int matches 40 run function jkpof:state/1/progress/event/chain_swap/global
execute if score #event_type jkpof.int matches 8 run function jkpof:state/1/progress/event/vertical_lock/global
execute if score #event_type jkpof.int matches 9 run function jkpof:state/1/progress/event/invisible_coating/global
execute if score #event_type jkpof.int matches 12 run function jkpof:state/1/progress/event/iron_torrent/global
execute if score #event_type jkpof.int matches 17 run function jkpof:state/1/progress/event/nuke/global
