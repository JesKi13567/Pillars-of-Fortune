data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_height, limit=1] text set value {score: {name: "#ctrl_pillar_height", objective: "jkpof.int"}, color: "yellow"}

execute store result storage jk:pof data.pillar_height.h int 1 run scoreboard players get #ctrl_pillar_height jkpof.int
function jkpof:state/0/interaction/ctrl/pillar/height/show_ with storage jk:pof data.pillar_height
