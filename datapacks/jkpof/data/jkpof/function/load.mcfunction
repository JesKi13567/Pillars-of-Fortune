forceload add -32 -32 32 32
scoreboard objectives add jkpof.int dummy
scoreboard players set #cur_version jkpof.int 1
execute if score #version jkpof.int = #cur_version jkpof.int run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "数据包已加载。", color: "green"}]
execute unless score #version jkpof.int = #cur_version jkpof.int run function jkpof:init

schedule function jkpof:ticks/tick1 1t replace
schedule function jkpof:ticks/sec1 2t replace
