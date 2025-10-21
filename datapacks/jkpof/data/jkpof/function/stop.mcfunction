tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏被强行终止！", color: "aqua"}]
execute positioned 132 48 0 run playsound block.anvil.land player @a
gamemode adventure @a
function jkpof:state/0/enter
