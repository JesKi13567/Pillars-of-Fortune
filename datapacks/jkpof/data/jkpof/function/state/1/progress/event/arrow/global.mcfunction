execute if score #event_time jkpof.int matches 1..60 run scoreboard players remove #event_time_arrow jkpof.int 1
execute if score #event_time jkpof.int matches 1..60 if score #event_time_arrow jkpof.int matches ..0 run scoreboard players set #event_time_arrow jkpof.int 2
execute if score #event_time jkpof.int matches 1..60 if score #event_time_arrow jkpof.int matches 1 as @a[scores={jkpof.state=2}, gamemode=survival] at @s run function jkpof:state/1/progress/event/arrow/summon
execute if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.arrow.name", color: "aqua"}, {storage: "jk:pof", nbt: "txt.event.global.stage_ended"}]

execute as @e[type=arrow, tag=jkpof_arrow] at @s run function jkpof:state/1/progress/event/arrow/clear
