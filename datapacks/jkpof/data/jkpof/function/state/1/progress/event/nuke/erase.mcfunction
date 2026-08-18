execute if score #event_nuke.q jkpof.int matches 1 positioned 1 -64 1 run function jkpof:state/1/progress/event/nuke/real
execute if score #event_nuke.q jkpof.int matches 2 positioned 1 -64 -24 run function jkpof:state/1/progress/event/nuke/real
execute if score #event_nuke.q jkpof.int matches 3 positioned -24 -64 -24 run function jkpof:state/1/progress/event/nuke/real
execute if score #event_nuke.q jkpof.int matches 4 positioned -24 -64 1 run function jkpof:state/1/progress/event/nuke/real

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]

# 移出随机池
execute if score #event_nuke.c jkpof.int matches 1.. run return 0
data remove storage jk:pof data.event.list[-1]
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1
execute if score #event_mode jkpof.int matches 17 run scoreboard players set #event_mode jkpof.int 0
