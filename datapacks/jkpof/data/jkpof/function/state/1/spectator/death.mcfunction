scoreboard players reset @s jkpof.death
gamemode spectator @s
tellraw @s [{text: "【幸运之柱】", color: "yellow"}, {text: "你死了，变成旁观者！", color: "green"}]
tellraw @a [{text: "【幸运之帚】", color: "green"}, {text: "有玩家死亡，清理倒计时", color: "yellow"}, {text: " +30 ", color: "red"}, {text: "秒！", color: "yellow"}]
scoreboard players add #trash jkpof.int 30
