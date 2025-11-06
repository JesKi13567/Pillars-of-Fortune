title @a title {text: "边界收缩", color: "aqua"}

execute if score #progress_border jkpof.int matches 2 run function jkpof:state/1/progress/event/once/border/1st
execute if score #progress_border jkpof.int matches 1 run function jkpof:state/1/progress/event/once/border/2nd

scoreboard players remove #progress_border jkpof.int 1
