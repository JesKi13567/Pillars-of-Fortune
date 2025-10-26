tag @a[limit=1, sort=random, scores={jkpof.state=2}, gamemode=survival] add jkpof_lucky_guy
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "恭喜玩家 ", color: "aqua"}, {selector: "@p[tag=jkpof_lucky_guy]", color: "white"}, {text: " 在此渡劫！", color: "aqua"}]
execute at @p[tag=jkpof_lucky_guy] run summon lightning_bolt ~ ~ ~
tag @a remove jkpof_lucky_guy
