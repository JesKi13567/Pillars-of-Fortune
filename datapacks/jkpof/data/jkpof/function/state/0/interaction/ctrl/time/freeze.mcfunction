scoreboard players add #ctrl_time_freeze jkpof.int 1
execute if score #ctrl_time_freeze jkpof.int matches 2.. run scoreboard players set #ctrl_time_freeze jkpof.int 0

execute if score #ctrl_time_freeze jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.time_set.freeze.0", color: "green"}]
execute if score #ctrl_time_freeze jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.time_set.freeze.1", color: "green"}]

function jkpof:state/0/interaction/ctrl/time/show
