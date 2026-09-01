scoreboard players remove #event_time jkpof.int 1
execute if score #event_type jkpof.int matches 1 run function jkpof:state/1/progress/event/1_arrow/global
execute if score #event_type jkpof.int matches 2 run function jkpof:state/1/progress/event/2_lava/global
execute if score #event_type jkpof.int matches 3 if score #event_time jkpof.int matches 0 run function jkpof:state/1/progress/event/3_lightning/global
execute if score #event_type jkpof.int matches 4 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/4_moon_walk/global
execute if score #event_type jkpof.int matches 5 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/5_bomb_chicken/global
execute if score #event_type jkpof.int matches 6 if score #event_time jkpof.int matches 0 run function jkpof:state/1/progress/event/6_chain_swap/global
execute if score #event_type jkpof.int matches 7 unless score #event_time jkpof.int matches ..-1 unless score #event_time jkpof.int matches 1..19 unless score #event_time jkpof.int matches 21..39 unless score #event_time jkpof.int matches 41.. run function jkpof:state/1/progress/event/7_prop_supply/global
execute if score #event_type jkpof.int matches 8 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/8_vertical_lock/global
execute if score #event_type jkpof.int matches 9 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/9_invisible_coating/global
execute if score #event_type jkpof.int matches 12 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/12_iron_torrent/global
execute if score #event_type jkpof.int matches 13 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/13_loot_magnet/global
execute if score #event_type jkpof.int matches 17 if score #event_time jkpof.int matches 0.. run function jkpof:state/1/progress/event/17_nuke/global
