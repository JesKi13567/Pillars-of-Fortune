# 开始填充
$execute if score #ctrl_map_real jkpof.int matches 1..5 run function jkpof:state/1/fill/map/type/mix/global {r: '$(r)', b1: '$(b1)', b2: '$(b2)'}
$execute if score #ctrl_map_real jkpof.int matches 6..9 run function jkpof:state/1/fill/map/type/combine {r: '$(r)', b1: '$(b1)', b2: '$(b2)'}
$execute if score #ctrl_map_real jkpof.int matches 10..12 run function jkpof:state/1/fill/map/type/3f {r: '$(r)', b1: '$(b1)', b2: '$(b2)', b3: '$(b3)', b4: '$(b4)'}
execute if score #ctrl_map_real jkpof.int matches 13 run function jkpof:state/1/fill/map/type/forest/ground
$execute if score #ctrl_map_real jkpof.int matches 14 run function jkpof:state/1/fill/map/type/rainbow/global {r: '$(r)'}

# 自定义
$execute if score #ctrl_map_real jkpof.int matches 15 run function jkpof:state/1/fill/map/type/mix/global {r: '$(r)', b1: '$(b1)', b2: '$(b2)'}
$execute if score #ctrl_map_real jkpof.int matches 16 run function jkpof:state/1/fill/map/type/combine {r: '$(r)', b1: '$(b1)', b2: '$(b2)'}
$execute if score #ctrl_map_real jkpof.int matches 17 run function jkpof:state/1/fill/map/type/3f {r: '$(r)', b1: '$(b1)', b2: '$(b2)', b3: '$(b3)', b4: '$(b4)'}

# 展示
title @a times 4t 2s 4t
$title @a title {storage: "jk:pof", interpret: true, nbt: "txt.map.title.$(id)", color: "green"}
$title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.map.subtitle.$(id)", color: "yellow"}
$tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.title.$(id)", color: "gold"}]
