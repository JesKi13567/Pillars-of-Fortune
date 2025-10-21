## 游戏重置
scoreboard players set #state jkpof.int 0
scoreboard players reset * jkpof.state
scoreboard players reset * jkpof.death
scoreboard players reset * jkpof.id
difficulty peaceful
gamerule pvp false
worldborder set 10000
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏已重置！", color: "green"}]

# 清理地图
kill @e[type=marker, tag=jkpof_clean]
summon marker 0 127 0 {Tags: ["jkpof", "jkpof_clean"]}
scoreboard players set @e[limit=1, type=marker, tag=jkpof_clean] jkpof.int 96
bossbar set jkpof:clean visible true
bossbar set jkpof:progress visible false

function jkpof:state/0/player_clear
