scoreboard players add #ctrl_lang jkpof.int 1
execute if score #ctrl_lang jkpof.int matches 2.. run scoreboard players set #ctrl_lang jkpof.int 0

execute if score #ctrl_lang jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/lang/_zh_cn
execute if score #ctrl_lang jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/lang/_en_us

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_lang, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lang", color: "yellow"}]
