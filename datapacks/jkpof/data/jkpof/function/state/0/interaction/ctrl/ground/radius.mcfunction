scoreboard players add #ctrl_ground_radius jkpof.int 2
execute if score #ctrl_ground_radius jkpof.int matches 26.. run scoreboard players set #ctrl_ground_radius jkpof.int 12

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {score: {name: "#ctrl_ground_radius", objective: "jkpof.int"}, color: "yellow"}

# 对应坐标
scoreboard players reset #ctrl_ground_radius_y jkpof.int
scoreboard players operation #ctrl_ground_radius_y jkpof.int -= #ctrl_ground_radius jkpof.int
scoreboard players remove #ctrl_ground_radius_y jkpof.int 32

execute store result storage jk:pof data.ground_radius.y int 1 run scoreboard players get #ctrl_ground_radius_y jkpof.int
