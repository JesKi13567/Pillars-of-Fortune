# subtitle 副标题: 1st / 2nd / 3rd
# arrow    水平收缩每边格数(显示): 10 / 8 / 4
# time     边界收缩秒数: 10 / 5 / 3
# size     边界目标大小: 29 / 13 / 5
# score    高度分数: 20 / 15 / 15
# height   高度格数: 40 / 30 / 30
# n        混凝土坐标: 25 / 15 / 7
# y        最终高度: 80 / 50 / 20
# yu       最终高度: -30 / 0 / 30
$tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.border.tellraw", color: "aqua"}, {text: " →$(arrow)←", color: "green"}, " $(time)", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds"}, {text: ", ", color: "aqua"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, {text: "$(height)", color: "green"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, " $(score)", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.exclamation", color: "aqua"}]
$title @a subtitle {text: "$(subtitle)", color: "green"}

$worldborder set $(size) $(time)s

$execute as @e[type=item_display, tag=jkpof_height_barrier] run data modify entity @s transformation.scale set value [$(size)f, $(size)f, 0.1f]

$execute if score #ctrl_upside_down jkpof.int matches 0 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=max, limit=1] jkpof.int $(score)
$execute if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=min, limit=1] jkpof.int $(score)

$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -$(n) $(y) $(n) $(n) $(y) $(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill $(n) $(y) -$(n) $(n) $(y) $(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -$(n) $(y) -$(n) $(n) $(y) -$(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -$(n) $(y) -$(n) -$(n) $(y) $(n) red_concrete

$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -$(n) $(yu) $(n) $(n) $(yu) $(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill $(n) $(yu) -$(n) $(n) $(yu) $(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -$(n) $(yu) -$(n) $(n) $(yu) -$(n) red_concrete
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -$(n) $(yu) -$(n) -$(n) $(yu) $(n) red_concrete
