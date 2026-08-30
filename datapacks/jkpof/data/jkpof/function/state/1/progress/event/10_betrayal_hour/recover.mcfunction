scoreboard players reset #event_betrayal_hour.status jkpof.int
scoreboard players reset * jkpof.betrayal

execute if score #ctrl_team jkpof.int matches 0 run team leave @a[scores={jkpof.state=2..3}, tag=!jkpof_merged]
execute if score #ctrl_team jkpof.int matches 0 as @a[scores={jkpof.state=2..3}, tag=jkpof_merged] run function jkpof:state/0/player/team/join
execute if score #ctrl_team jkpof.int matches 1..2 as @a[scores={jkpof.state=2..3}] run function jkpof:state/0/player/team/join

execute if score #event_plus_10 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_plus_10 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
