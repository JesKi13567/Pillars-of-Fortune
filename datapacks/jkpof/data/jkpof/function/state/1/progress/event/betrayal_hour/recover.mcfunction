scoreboard players reset #event_betrayal_hour.status jkpof.int
scoreboard players reset * jkpof.betrayal

execute if score #ctrl_team jkpof.int matches 0 run team leave @a[scores={jkpof.state=2..3}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.red @a[scores={jkpof.team=1}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.blue @a[scores={jkpof.team=2}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.green @a[scores={jkpof.team=3}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.yellow @a[scores={jkpof.team=4}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.cyan @a[scores={jkpof.team=5}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.white @a[scores={jkpof.team=6}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.pink @a[scores={jkpof.team=7}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.gray @a[scores={jkpof.team=8}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.gold @a[scores={jkpof.team=9}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.lime @a[scores={jkpof.team=10}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.purple @a[scores={jkpof.team=11}]
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.light_gray @a[scores={jkpof.team=12}]

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
