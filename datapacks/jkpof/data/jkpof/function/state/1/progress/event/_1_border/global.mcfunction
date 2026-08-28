title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.border.name", color: "aqua"}

execute if score #ctrl_upside_down jkpof.int matches 0 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↓"}
execute if score #ctrl_upside_down jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↑"}

execute if score #event_border.o jkpof.int matches 0 run function jkpof:state/1/progress/event/_1_border/real {subtitle: '1st', arrow: 10, time: 10, size: 29, score: 20, height: 40, n: 25, y: 80, yu: -30}
execute if score #event_border.o jkpof.int matches 1 run function jkpof:state/1/progress/event/_1_border/real {subtitle: '2nd', arrow: 8, time: 5, size: 13, score: 15, height: 30, n: 15, y: 50, yu: 0}
execute if score #event_border.o jkpof.int matches 2 run function jkpof:state/1/progress/event/_1_border/real {subtitle: '3rd', arrow: 4, time: 3, size: 5, score: 15, height: 30, n: 7, y: 20, yu: 30}

kill @e[type=marker, tag=jkpof_height_symbol]

# 移出随机池
scoreboard players add #event_border.o jkpof.int 1
execute if score #event_border.o jkpof.int < #event_border.t jkpof.int run return 0
data remove storage jk:pof data.event.list[0]
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1
execute if score #event_mode jkpof.int matches -1 run scoreboard players set #event_mode jkpof.int 0
