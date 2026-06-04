scoreboard players add #ctrl_preset jkpof.int 1
execute if score #ctrl_preset jkpof.int matches 3.. run scoreboard players set #ctrl_preset jkpof.int 0

function jkpof:state/0/interaction/ctrl/preset/_default
execute if score #ctrl_preset jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/preset/_author_love
execute if score #ctrl_preset jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/preset/_focus

# 其他所有按钮的显示
function jkpof:state/0/interaction/ctrl/preset/show_ctrl
