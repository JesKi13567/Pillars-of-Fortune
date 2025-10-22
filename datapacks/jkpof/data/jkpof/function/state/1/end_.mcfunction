execute as @a at @s run playsound ui.toast.challenge_complete player @s

tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏结束，恭喜 ", color: green}, {selector: "@p[scores={jkpof.state=2}, gamemode=survival]", color: "white"}, {text: " 获得胜利！", color: "green"}]

title @a times 1s 5s 1s
title @a title {text: "恭喜", color: "green"}
title @a subtitle [{text: "玩家 ", color: "green"}, {selector: "@p[scores={jkpof.state=2}, gamemode=survival]", color: "white"}, " 获得胜利"]
