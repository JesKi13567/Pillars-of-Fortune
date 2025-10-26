scoreboard players add #ctrl_time_freeze jkpof.int 1
execute if score #ctrl_time_freeze jkpof.int matches 2.. run scoreboard players set #ctrl_time_freeze jkpof.int 0

execute if score #ctrl_time_freeze jkpof.int matches 0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "昼夜开始循环。", color: "green"}]
execute if score #ctrl_time_freeze jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "昼夜不再循环。", color: "green"}]

function jkpof:state/0/interaction/ctrl/time/show
