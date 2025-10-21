scoreboard players set @a jkpof.state 1
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "测试模式开启，强制所有人进入游戏！", color: "aqua"}]
function jkpof:state/1/enter
scoreboard players set #test_mode jkpof.int 1
