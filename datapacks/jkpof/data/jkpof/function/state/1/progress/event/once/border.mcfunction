title @a title {text: "边界收缩", color: "aqua"}

execute if score #progress_border jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将在", color: "aqua"}, {text: " 10 秒 ", color: "yellow"}, {text: "内半径收缩", color: "aqua"}, {text: " 10 格", color: "yellow"}, {text: "！", color: "aqua"}]
execute if score #progress_border jkpof.int matches 2 run title @a subtitle {text: "收缩 10 格", color: "green"}
execute if score #progress_border jkpof.int matches 2 run worldborder set 29 10

execute if score #progress_border jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将在", color: "aqua"}, {text: " 5 秒 ", color: "yellow"}, {text: "内半径收缩", color: "aqua"}, {text: " 8 格", color: "yellow"}, {text: "！", color: "aqua"}]
execute if score #progress_border jkpof.int matches 1 run title @a subtitle {text: "收缩 8 格", color: "green"}
execute if score #progress_border jkpof.int matches 1 run worldborder set 13 5

scoreboard players remove #progress_border jkpof.int 1
