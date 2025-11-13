data modify storage jk:pof data.event.cur set from storage jk:pof data.event.list[0]
execute if score #event_cur_count jkpof.int matches 1.. run function jkpof:state/1/progress/roll/random with storage jk:pof data.event
execute store result score #event_mode jkpof.int run data get storage jk:pof data.event.cur
